/*订阅每一架无人机历史轨迹信息，预测每一架无人机未来轨迹*/
#include <multi_bspline_opt/obj_predict.h>
#include <string>

namespace my_planner
{
//    int ObjHistory::queue_size_;
//   int ObjHistory::skip_num_;
//   ros::Time ObjHistory::global_start_time_;
void ObjHistory::init(int id, int skip_num, int queue_size, ros::Time global_start_time) 
{
  clear();
  skip_ = 0;
  obj_idx_ = id;
  skip_num_ = skip_num;
 queue_size_ = queue_size;
  global_start_time_ = global_start_time;
}

void ObjHistory::poseCallback(const geometry_msgs::PoseStampedConstPtr& msg)
{
    ++ skip_;  //每调用一次，加一次skip_
    //每skip_num_调用一次
    if ( skip_ < skip_num_)
      return;

    Eigen::Vector4d pos_t;
    pos_t(0) = msg->pose.position.x;
    pos_t(1) = msg->pose.position.y;
    pos_t(2) = msg->pose.position.z;
    pos_t(3) =(ros::Time::now() - global_start_time_).toSec();

    history_.push_back(pos_t);
    //如果history太大，去掉最久的信息
    if (history_.size() >  ObjHistory::queue_size_)
        history_.pop_front();

    skip_ = 0;
}


void ObjPredictor::init()
{
    //获得参数
    int queue_size, skip_nums;
    node_handle_.param("prediction/obj_num", obj_num_, 0);
    node_handle_.param("prediction/lambda", lambda_, 1.0);
    node_handle_.param("prediction/predict_rate", predict_rate_, 1.0);
    node_handle_.param("prediction/queue_size", queue_size, 10);
    node_handle_.param("prediction/skip_nums", skip_nums, 1);

//初始化多项式轨迹预测器
    predict_trajs_.reset(new vector<PolynomialPrediction>);
    predict_trajs_->resize(obj_num_);//obj_num组

//初始化无人机可视化位置
  obj_scale_.reset(new vector<Eigen::Vector3d>);
  obj_scale_->resize(obj_num_);
  scale_init_.resize(obj_num_);   
  for( int i = 0; i < obj_num_; i++)
  {
    scale_init_[i] = false;
  }

  //订阅位姿
  ros::Time t_now = ros::Time::now();
  //获取每一架无人机的历史位姿信息,存入obj_historys_
  for( int i = 0; i < obj_num_; i++)
  {
    shared_ptr<ObjHistory> obj_his(new ObjHistory);
    obj_his->init(i, skip_nums, queue_size, t_now);
    obj_histories_.push_back(obj_his);

    //订阅/dynamic/pose_i，送入obj_his
    ros::Subscriber pose_sub = node_handle_.subscribe<geometry_msgs::PoseStamped>("/dynamic/pose_" + std::to_string(i), 10, &ObjHistory::poseCallback, obj_his.get());
    pose_subs_.push_back(pose_sub);  //pose_subs获取每一架无人机历史轨迹信息
    predict_trajs_->at(i).setGlobalStartTime(t_now);     //预测轨迹获得现在时间 
  }

  //可视化标记
    marker_sub_ = node_handle_.subscribe<visualization_msgs::Marker>("/dynamic/obj", 10, &ObjPredictor::markerCallback, this);

  //预测轨迹
  predict_timer_ = node_handle_.createTimer(ros::Duration(1 / predict_rate_), &ObjPredictor::predictCallback, this);
}

void ObjPredictor::predictCallback(const ros::TimerEvent &e)
{
    //注意，这里的轨迹预测是指预测已经知道的轨迹点之间的轨迹
    //多项式拟合预测轨迹
      // predictPolyFit();
    //匀速直线预测轨迹  
     predictConstVel();
}

void ObjPredictor::predictPolyFit()
{
    //对于每一架无人机进行预测
    for ( int i = 0; i < obj_num_; i++ )
    {
        //获得拟合的A和b
        Eigen::Matrix<double, 6, 6> A;
        Eigen::Matrix<double, 6, 1> temp;
        Eigen::Matrix<double, 6, 1> bm[3];  // poly coefficent
        vector<Eigen::Matrix<double, 6, 1>> pm(3);
        
        A.setZero();
        for (int i = 0; i < 3; ++i)
            bm[i].setZero();
            /* ---------- estimation error ---------- */
         list<Eigen::Vector4d> his;
        obj_histories_[i]->getHistory(his);   //获得这架无人机历史轨迹
         for (list<Eigen::Vector4d>::iterator it = his.begin(); it != his.end(); ++it) {
                 Eigen::Vector3d qi = (*it).head(3);  //获取位置
                 double ti = (*it)(3);  //获取时间

                /* A */
                temp << 1.0, ti, pow(ti, 2), pow(ti, 3), pow(ti, 4), pow(ti, 5);
                for (int j = 0; j < 6; ++j)
                       A.row(j) += 2.0 * pow(ti, j) * temp.transpose();

             /* b */
              for (int dim = 0; dim < 3; ++dim)
                         bm[dim] += 2.0 * qi(dim) * temp;
    }

    /* ---------- acceleration regulator ---------- */
    double t1 = his.front()(3);   //历史轨迹开始时间
    double t2 = his.back()(3);   //历史轨迹结束时间

    temp << 0.0, 0.0, 2 * t1 - 2 * t2, 3 * pow(t1, 2) - 3 * pow(t2, 2), 4 * pow(t1, 3) - 4 * pow(t2, 3),
        5 * pow(t1, 4) - 5 * pow(t2, 4);
    A.row(2) += -4 * lambda_ * temp.transpose();

    temp << 0.0, 0.0, pow(t1, 2) - pow(t2, 2), 2 * pow(t1, 3) - 2 * pow(t2, 3),
        3 * pow(t1, 4) - 3 * pow(t2, 4), 4 * pow(t1, 5) - 4 * pow(t2, 5);
    A.row(3) += -12 * lambda_ * temp.transpose();

    temp << 0.0, 0.0, 20 * pow(t1, 3) - 20 * pow(t2, 3), 45 * pow(t1, 4) - 45 * pow(t2, 4),
        72 * pow(t1, 5) - 72 * pow(t2, 5), 100 * pow(t1, 6) - 100 * pow(t2, 6);
    A.row(4) += -4.0 / 5.0 * lambda_ * temp.transpose();

    temp << 0.0, 0.0, 35 * pow(t1, 4) - 35 * pow(t2, 4), 84 * pow(t1, 5) - 84 * pow(t2, 5),
        140 * pow(t1, 6) - 140 * pow(t2, 6), 200 * pow(t1, 7) - 200 * pow(t2, 7);
    A.row(5) += -4.0 / 7.0 * lambda_ * temp.transpose();

    /* ---------- solve ---------- */
    for (int j = 0; j < 3; j++) {
      pm[j] = A.colPivHouseholderQr().solve(bm[j]);
    }

    /* ---------- update prediction container ---------- */
    predict_trajs_->at(i).SetPolys(pm);
    predict_trajs_->at(i).SetTime(t1, t2);
  }
    }

void ObjPredictor::predictConstVel() {
  for (int i = 0; i < obj_num_; i++) 
  {
    //获得历史轨迹
    list<Eigen::Vector4d> his;
    obj_histories_[i]->getHistory(his);

    list<Eigen::Vector4d>::iterator list_it = his.end(); //迭代器，从末尾开始
    Eigen::Vector3d q1, q2;
    double t1, t2;

    --list_it;
    q2 = (*list_it).head(3);  //最后一个点位置
    t2 = (*list_it)(3);  //时间

    --list_it;
    q1 = (*list_it).head(3);  //位置
    t1 = (*list_it)(3);//时间

    Eigen::Matrix<double, 2, 3> p01, q12;
    q12.row(0) = q1.transpose();
    q12.row(1) = q2.transpose();

    Eigen::Matrix<double, 2, 2> At12;
    At12 << 1, t1, 1, t2;

    p01 = At12.inverse() * q12;//p01:3*2

    vector<Eigen::Matrix<double, 6, 1>> polys(3);
    for (int j = 0; j < 3; ++j) {
      polys[j].setZero();
      polys[j].head(2) = p01.col(j);  //获取每一维度的系数
    }
    
    predict_trajs_->at(i).SetPolys(polys);
    predict_trajs_->at(i).SetTime(t1, t2); 
  }
}
void ObjPredictor::markerCallback(const visualization_msgs::MarkerConstPtr& msg)
{
    int idx = msg->id;
    //获得id号无人机的可视化位置
  (*obj_scale_)[idx](0) = msg->scale.x;
  (*obj_scale_)[idx](1) = msg->scale.y;
  (*obj_scale_)[idx](2) = msg->scale.z;

  scale_init_[idx] = true;

  //当获得所有无人机的可视化位置以后，关闭回调函数

  int finish_num = 0;
  for (int i = 0; i < obj_num_; i++) {
    if (scale_init_[i]) finish_num++;
  }

  if (finish_num == obj_num_) {
    marker_sub_.shutdown();
  }

}
//匀速直线方法获得t时刻位置
Eigen::Vector3d ObjPredictor::evaluateConstVel(int obj_id, double time)
{
  if ( obj_id < obj_num_ )
  {
    return predict_trajs_->at(obj_id).evaluateConstVel(time);
  }

  double MAX = std::numeric_limits<double>::max();
  return Eigen::Vector3d(MAX, MAX, MAX);
}

//多项式拟合方法获得t时刻位置
  Eigen::Vector3d ObjPredictor::evaluatePoly(int obj_id, double time)
{
  if ( obj_id < obj_num_ )
  {
    return predict_trajs_->at(obj_id).evaluate(time);
  }

  double MAX = std::numeric_limits<double>::max();
  return Eigen::Vector3d(MAX, MAX, MAX);
}
}