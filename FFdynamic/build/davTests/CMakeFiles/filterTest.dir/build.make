# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/isaac/Downloads/FFdynamic-master/FFdynamic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build

# Include any dependencies generated for this target.
include davTests/CMakeFiles/filterTest.dir/depend.make

# Include the progress variables for this target.
include davTests/CMakeFiles/filterTest.dir/progress.make

# Include the compile flags for this target's objects.
include davTests/CMakeFiles/filterTest.dir/flags.make

davTests/CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.o: davTests/CMakeFiles/filterTest.dir/flags.make
davTests/CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.o: ../davTests/ffmpegFilterTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object davTests/CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.o"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.o -c /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests/ffmpegFilterTest.cpp

davTests/CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.i"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests/ffmpegFilterTest.cpp > CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.i

davTests/CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.s"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests/ffmpegFilterTest.cpp -o CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.s

davTests/CMakeFiles/filterTest.dir/testCommon.cpp.o: davTests/CMakeFiles/filterTest.dir/flags.make
davTests/CMakeFiles/filterTest.dir/testCommon.cpp.o: ../davTests/testCommon.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object davTests/CMakeFiles/filterTest.dir/testCommon.cpp.o"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/filterTest.dir/testCommon.cpp.o -c /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests/testCommon.cpp

davTests/CMakeFiles/filterTest.dir/testCommon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filterTest.dir/testCommon.cpp.i"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests/testCommon.cpp > CMakeFiles/filterTest.dir/testCommon.cpp.i

davTests/CMakeFiles/filterTest.dir/testCommon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filterTest.dir/testCommon.cpp.s"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests/testCommon.cpp -o CMakeFiles/filterTest.dir/testCommon.cpp.s

# Object files for target filterTest
filterTest_OBJECTS = \
"CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.o" \
"CMakeFiles/filterTest.dir/testCommon.cpp.o"

# External object files for target filterTest
filterTest_EXTERNAL_OBJECTS =

davTests/filterTest: davTests/CMakeFiles/filterTest.dir/ffmpegFilterTest.cpp.o
davTests/filterTest: davTests/CMakeFiles/filterTest.dir/testCommon.cpp.o
davTests/filterTest: davTests/CMakeFiles/filterTest.dir/build.make
davTests/filterTest: libffdynamic.dylib
davTests/filterTest: /usr/local/Cellar/ffmpeg/4.2.1_2/lib/libavformat.dylib
davTests/filterTest: /usr/local/Cellar/ffmpeg/4.2.1_2/lib/libavcodec.dylib
davTests/filterTest: /usr/local/Cellar/ffmpeg/4.2.1_2/lib/libavfilter.dylib
davTests/filterTest: /usr/local/Cellar/ffmpeg/4.2.1_2/lib/libavutil.dylib
davTests/filterTest: /usr/local/Cellar/ffmpeg/4.2.1_2/lib/libswscale.dylib
davTests/filterTest: /usr/local/Cellar/ffmpeg/4.2.1_2/lib/libswresample.dylib
davTests/filterTest: /usr/local/Cellar/glog/0.4.0/lib/libglog.dylib
davTests/filterTest: /usr/local/Cellar/gflags/2.2.2/lib/libgflags.dylib
davTests/filterTest: davTests/CMakeFiles/filterTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable filterTest"
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filterTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
davTests/CMakeFiles/filterTest.dir/build: davTests/filterTest

.PHONY : davTests/CMakeFiles/filterTest.dir/build

davTests/CMakeFiles/filterTest.dir/clean:
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests && $(CMAKE_COMMAND) -P CMakeFiles/filterTest.dir/cmake_clean.cmake
.PHONY : davTests/CMakeFiles/filterTest.dir/clean

davTests/CMakeFiles/filterTest.dir/depend:
	cd /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/isaac/Downloads/FFdynamic-master/FFdynamic /Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTests /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests /Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests/CMakeFiles/filterTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : davTests/CMakeFiles/filterTest.dir/depend

