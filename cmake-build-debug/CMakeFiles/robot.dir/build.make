# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2016.3.4\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2016.3.4\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Trevor\Documents\robot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Trevor\Documents\robot\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/robot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/robot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/robot.dir/flags.make

CMakeFiles/robot.dir/I2CBus.cpp.obj: CMakeFiles/robot.dir/flags.make
CMakeFiles/robot.dir/I2CBus.cpp.obj: ../I2CBus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/robot.dir/I2CBus.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\robot.dir\I2CBus.cpp.obj -c C:\Users\Trevor\Documents\robot\I2CBus.cpp

CMakeFiles/robot.dir/I2CBus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot.dir/I2CBus.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Trevor\Documents\robot\I2CBus.cpp > CMakeFiles\robot.dir\I2CBus.cpp.i

CMakeFiles/robot.dir/I2CBus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot.dir/I2CBus.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Trevor\Documents\robot\I2CBus.cpp -o CMakeFiles\robot.dir\I2CBus.cpp.s

CMakeFiles/robot.dir/I2CBus.cpp.obj.requires:

.PHONY : CMakeFiles/robot.dir/I2CBus.cpp.obj.requires

CMakeFiles/robot.dir/I2CBus.cpp.obj.provides: CMakeFiles/robot.dir/I2CBus.cpp.obj.requires
	$(MAKE) -f CMakeFiles\robot.dir\build.make CMakeFiles/robot.dir/I2CBus.cpp.obj.provides.build
.PHONY : CMakeFiles/robot.dir/I2CBus.cpp.obj.provides

CMakeFiles/robot.dir/I2CBus.cpp.obj.provides.build: CMakeFiles/robot.dir/I2CBus.cpp.obj


CMakeFiles/robot.dir/L3G.cpp.obj: CMakeFiles/robot.dir/flags.make
CMakeFiles/robot.dir/L3G.cpp.obj: ../L3G.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/robot.dir/L3G.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\robot.dir\L3G.cpp.obj -c C:\Users\Trevor\Documents\robot\L3G.cpp

CMakeFiles/robot.dir/L3G.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot.dir/L3G.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Trevor\Documents\robot\L3G.cpp > CMakeFiles\robot.dir\L3G.cpp.i

CMakeFiles/robot.dir/L3G.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot.dir/L3G.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Trevor\Documents\robot\L3G.cpp -o CMakeFiles\robot.dir\L3G.cpp.s

CMakeFiles/robot.dir/L3G.cpp.obj.requires:

.PHONY : CMakeFiles/robot.dir/L3G.cpp.obj.requires

CMakeFiles/robot.dir/L3G.cpp.obj.provides: CMakeFiles/robot.dir/L3G.cpp.obj.requires
	$(MAKE) -f CMakeFiles\robot.dir\build.make CMakeFiles/robot.dir/L3G.cpp.obj.provides.build
.PHONY : CMakeFiles/robot.dir/L3G.cpp.obj.provides

CMakeFiles/robot.dir/L3G.cpp.obj.provides.build: CMakeFiles/robot.dir/L3G.cpp.obj


CMakeFiles/robot.dir/LSM303.cpp.obj: CMakeFiles/robot.dir/flags.make
CMakeFiles/robot.dir/LSM303.cpp.obj: ../LSM303.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/robot.dir/LSM303.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\robot.dir\LSM303.cpp.obj -c C:\Users\Trevor\Documents\robot\LSM303.cpp

CMakeFiles/robot.dir/LSM303.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot.dir/LSM303.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Trevor\Documents\robot\LSM303.cpp > CMakeFiles\robot.dir\LSM303.cpp.i

CMakeFiles/robot.dir/LSM303.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot.dir/LSM303.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Trevor\Documents\robot\LSM303.cpp -o CMakeFiles\robot.dir\LSM303.cpp.s

CMakeFiles/robot.dir/LSM303.cpp.obj.requires:

.PHONY : CMakeFiles/robot.dir/LSM303.cpp.obj.requires

CMakeFiles/robot.dir/LSM303.cpp.obj.provides: CMakeFiles/robot.dir/LSM303.cpp.obj.requires
	$(MAKE) -f CMakeFiles\robot.dir\build.make CMakeFiles/robot.dir/LSM303.cpp.obj.provides.build
.PHONY : CMakeFiles/robot.dir/LSM303.cpp.obj.provides

CMakeFiles/robot.dir/LSM303.cpp.obj.provides.build: CMakeFiles/robot.dir/LSM303.cpp.obj


CMakeFiles/robot.dir/main.cpp.obj: CMakeFiles/robot.dir/flags.make
CMakeFiles/robot.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/robot.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\robot.dir\main.cpp.obj -c C:\Users\Trevor\Documents\robot\main.cpp

CMakeFiles/robot.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Trevor\Documents\robot\main.cpp > CMakeFiles\robot.dir\main.cpp.i

CMakeFiles/robot.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Trevor\Documents\robot\main.cpp -o CMakeFiles\robot.dir\main.cpp.s

CMakeFiles/robot.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/robot.dir/main.cpp.obj.requires

CMakeFiles/robot.dir/main.cpp.obj.provides: CMakeFiles/robot.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\robot.dir\build.make CMakeFiles/robot.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/robot.dir/main.cpp.obj.provides

CMakeFiles/robot.dir/main.cpp.obj.provides.build: CMakeFiles/robot.dir/main.cpp.obj


CMakeFiles/robot.dir/pwm.cpp.obj: CMakeFiles/robot.dir/flags.make
CMakeFiles/robot.dir/pwm.cpp.obj: ../pwm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/robot.dir/pwm.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\robot.dir\pwm.cpp.obj -c C:\Users\Trevor\Documents\robot\pwm.cpp

CMakeFiles/robot.dir/pwm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot.dir/pwm.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Trevor\Documents\robot\pwm.cpp > CMakeFiles\robot.dir\pwm.cpp.i

CMakeFiles/robot.dir/pwm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot.dir/pwm.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Trevor\Documents\robot\pwm.cpp -o CMakeFiles\robot.dir\pwm.cpp.s

CMakeFiles/robot.dir/pwm.cpp.obj.requires:

.PHONY : CMakeFiles/robot.dir/pwm.cpp.obj.requires

CMakeFiles/robot.dir/pwm.cpp.obj.provides: CMakeFiles/robot.dir/pwm.cpp.obj.requires
	$(MAKE) -f CMakeFiles\robot.dir\build.make CMakeFiles/robot.dir/pwm.cpp.obj.provides.build
.PHONY : CMakeFiles/robot.dir/pwm.cpp.obj.provides

CMakeFiles/robot.dir/pwm.cpp.obj.provides.build: CMakeFiles/robot.dir/pwm.cpp.obj


# Object files for target robot
robot_OBJECTS = \
"CMakeFiles/robot.dir/I2CBus.cpp.obj" \
"CMakeFiles/robot.dir/L3G.cpp.obj" \
"CMakeFiles/robot.dir/LSM303.cpp.obj" \
"CMakeFiles/robot.dir/main.cpp.obj" \
"CMakeFiles/robot.dir/pwm.cpp.obj"

# External object files for target robot
robot_EXTERNAL_OBJECTS =

robot.exe: CMakeFiles/robot.dir/I2CBus.cpp.obj
robot.exe: CMakeFiles/robot.dir/L3G.cpp.obj
robot.exe: CMakeFiles/robot.dir/LSM303.cpp.obj
robot.exe: CMakeFiles/robot.dir/main.cpp.obj
robot.exe: CMakeFiles/robot.dir/pwm.cpp.obj
robot.exe: CMakeFiles/robot.dir/build.make
robot.exe: CMakeFiles/robot.dir/linklibs.rsp
robot.exe: CMakeFiles/robot.dir/objects1.rsp
robot.exe: CMakeFiles/robot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable robot.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\robot.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/robot.dir/build: robot.exe

.PHONY : CMakeFiles/robot.dir/build

CMakeFiles/robot.dir/requires: CMakeFiles/robot.dir/I2CBus.cpp.obj.requires
CMakeFiles/robot.dir/requires: CMakeFiles/robot.dir/L3G.cpp.obj.requires
CMakeFiles/robot.dir/requires: CMakeFiles/robot.dir/LSM303.cpp.obj.requires
CMakeFiles/robot.dir/requires: CMakeFiles/robot.dir/main.cpp.obj.requires
CMakeFiles/robot.dir/requires: CMakeFiles/robot.dir/pwm.cpp.obj.requires

.PHONY : CMakeFiles/robot.dir/requires

CMakeFiles/robot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\robot.dir\cmake_clean.cmake
.PHONY : CMakeFiles/robot.dir/clean

CMakeFiles/robot.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Trevor\Documents\robot C:\Users\Trevor\Documents\robot C:\Users\Trevor\Documents\robot\cmake-build-debug C:\Users\Trevor\Documents\robot\cmake-build-debug C:\Users\Trevor\Documents\robot\cmake-build-debug\CMakeFiles\robot.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/robot.dir/depend
