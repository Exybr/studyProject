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

# Utility rule file for Printer_tconf.

# Include any custom commands dependencies for this target.
include TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/compiler_depend.make

# Include the progress variables for this target.
include TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/progress.make

Printer_tconf: TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/build.make
.PHONY : Printer_tconf

# Rule to build all files generated by this target.
TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/build: Printer_tconf
.PHONY : TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/build

TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/clean:
	cd /home/parallels/projects/studyProject/build/TestTask/libs/printer && $(CMAKE_COMMAND) -P CMakeFiles/Printer_tconf.dir/cmake_clean.cmake
.PHONY : TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/clean

TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/depend:
	cd /home/parallels/projects/studyProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallels/projects/studyProject /home/parallels/projects/studyProject/TestTask/libs/printer /home/parallels/projects/studyProject/build /home/parallels/projects/studyProject/build/TestTask/libs/printer /home/parallels/projects/studyProject/build/TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : TestTask/libs/printer/CMakeFiles/Printer_tconf.dir/depend

