# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wenjing/ros/my_planner_rviz/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wenjing/ros/my_planner_rviz/build

# Include any dependencies generated for this target.
include uav_detect/CMakeFiles/uav_detect.dir/depend.make

# Include the progress variables for this target.
include uav_detect/CMakeFiles/uav_detect.dir/progress.make

# Include the compile flags for this target's objects.
include uav_detect/CMakeFiles/uav_detect.dir/flags.make

uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o: uav_detect/CMakeFiles/uav_detect.dir/flags.make
uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o: /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/detect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wenjing/ros/my_planner_rviz/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uav_detect.dir/src/detect.cpp.o -c /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/detect.cpp

uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uav_detect.dir/src/detect.cpp.i"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/detect.cpp > CMakeFiles/uav_detect.dir/src/detect.cpp.i

uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uav_detect.dir/src/detect.cpp.s"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/detect.cpp -o CMakeFiles/uav_detect.dir/src/detect.cpp.s

uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.requires:

.PHONY : uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.requires

uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.provides: uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.requires
	$(MAKE) -f uav_detect/CMakeFiles/uav_detect.dir/build.make uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.provides.build
.PHONY : uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.provides

uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.provides.build: uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o


uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o: uav_detect/CMakeFiles/uav_detect.dir/flags.make
uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o: /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/uav_detect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wenjing/ros/my_planner_rviz/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o -c /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/uav_detect.cpp

uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uav_detect.dir/src/uav_detect.cpp.i"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/uav_detect.cpp > CMakeFiles/uav_detect.dir/src/uav_detect.cpp.i

uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uav_detect.dir/src/uav_detect.cpp.s"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wenjing/ros/my_planner_rviz/src/uav_detect/src/uav_detect.cpp -o CMakeFiles/uav_detect.dir/src/uav_detect.cpp.s

uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.requires:

.PHONY : uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.requires

uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.provides: uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.requires
	$(MAKE) -f uav_detect/CMakeFiles/uav_detect.dir/build.make uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.provides.build
.PHONY : uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.provides

uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.provides.build: uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o


# Object files for target uav_detect
uav_detect_OBJECTS = \
"CMakeFiles/uav_detect.dir/src/detect.cpp.o" \
"CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o"

# External object files for target uav_detect
uav_detect_EXTERNAL_OBJECTS =

/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: uav_detect/CMakeFiles/uav_detect.dir/build.make
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/libcv_bridge.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/libmessage_filters.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/libroscpp.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/librosconsole.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/librostime.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /opt/ros/melodic/lib/libcpp_common.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect: uav_detect/CMakeFiles/uav_detect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wenjing/ros/my_planner_rviz/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect"
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uav_detect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
uav_detect/CMakeFiles/uav_detect.dir/build: /home/wenjing/ros/my_planner_rviz/devel/lib/uav_detect/uav_detect

.PHONY : uav_detect/CMakeFiles/uav_detect.dir/build

uav_detect/CMakeFiles/uav_detect.dir/requires: uav_detect/CMakeFiles/uav_detect.dir/src/detect.cpp.o.requires
uav_detect/CMakeFiles/uav_detect.dir/requires: uav_detect/CMakeFiles/uav_detect.dir/src/uav_detect.cpp.o.requires

.PHONY : uav_detect/CMakeFiles/uav_detect.dir/requires

uav_detect/CMakeFiles/uav_detect.dir/clean:
	cd /home/wenjing/ros/my_planner_rviz/build/uav_detect && $(CMAKE_COMMAND) -P CMakeFiles/uav_detect.dir/cmake_clean.cmake
.PHONY : uav_detect/CMakeFiles/uav_detect.dir/clean

uav_detect/CMakeFiles/uav_detect.dir/depend:
	cd /home/wenjing/ros/my_planner_rviz/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wenjing/ros/my_planner_rviz/src /home/wenjing/ros/my_planner_rviz/src/uav_detect /home/wenjing/ros/my_planner_rviz/build /home/wenjing/ros/my_planner_rviz/build/uav_detect /home/wenjing/ros/my_planner_rviz/build/uav_detect/CMakeFiles/uav_detect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : uav_detect/CMakeFiles/uav_detect.dir/depend

