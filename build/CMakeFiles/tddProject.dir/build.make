# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/parallels/projects/studyProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallels/projects/studyProject/build

# Include any dependencies generated for this target.
include CMakeFiles/tddProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tddProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tddProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tddProject.dir/flags.make

CMakeFiles/tddProject.dir/main.cpp.o: CMakeFiles/tddProject.dir/flags.make
CMakeFiles/tddProject.dir/main.cpp.o: ../main.cpp
CMakeFiles/tddProject.dir/main.cpp.o: CMakeFiles/tddProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/parallels/projects/studyProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tddProject.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tddProject.dir/main.cpp.o -MF CMakeFiles/tddProject.dir/main.cpp.o.d -o CMakeFiles/tddProject.dir/main.cpp.o -c /home/parallels/projects/studyProject/main.cpp

CMakeFiles/tddProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tddProject.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/parallels/projects/studyProject/main.cpp > CMakeFiles/tddProject.dir/main.cpp.i

CMakeFiles/tddProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tddProject.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/parallels/projects/studyProject/main.cpp -o CMakeFiles/tddProject.dir/main.cpp.s

# Object files for target tddProject
tddProject_OBJECTS = \
"CMakeFiles/tddProject.dir/main.cpp.o"

# External object files for target tddProject
tddProject_EXTERNAL_OBJECTS =

tddProject/binaries/tddProject: CMakeFiles/tddProject.dir/main.cpp.o
tddProject/binaries/tddProject: CMakeFiles/tddProject.dir/build.make
tddProject/binaries/tddProject: tddProject/binaries/lib/libPrinter.so
tddProject/binaries/tddProject: CMakeFiles/tddProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/parallels/projects/studyProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tddProject/binaries/tddProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tddProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tddProject.dir/build: tddProject/binaries/tddProject
.PHONY : CMakeFiles/tddProject.dir/build

CMakeFiles/tddProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tddProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tddProject.dir/clean

CMakeFiles/tddProject.dir/depend:
	cd /home/parallels/projects/studyProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallels/projects/studyProject /home/parallels/projects/studyProject /home/parallels/projects/studyProject/build /home/parallels/projects/studyProject/build /home/parallels/projects/studyProject/build/CMakeFiles/tddProject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tddProject.dir/depend

