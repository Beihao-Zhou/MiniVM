# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.6/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/beihaozhou/Projects/miniVM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/beihaozhou/Projects/miniVM/build

# Include any dependencies generated for this target.
include CMakeFiles/vm_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/vm_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/vm_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vm_lib.dir/flags.make

CMakeFiles/vm_lib.dir/src/vm.cpp.o: CMakeFiles/vm_lib.dir/flags.make
CMakeFiles/vm_lib.dir/src/vm.cpp.o: /Users/beihaozhou/Projects/miniVM/src/vm.cpp
CMakeFiles/vm_lib.dir/src/vm.cpp.o: CMakeFiles/vm_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/beihaozhou/Projects/miniVM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vm_lib.dir/src/vm.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/vm_lib.dir/src/vm.cpp.o -MF CMakeFiles/vm_lib.dir/src/vm.cpp.o.d -o CMakeFiles/vm_lib.dir/src/vm.cpp.o -c /Users/beihaozhou/Projects/miniVM/src/vm.cpp

CMakeFiles/vm_lib.dir/src/vm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/vm_lib.dir/src/vm.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/beihaozhou/Projects/miniVM/src/vm.cpp > CMakeFiles/vm_lib.dir/src/vm.cpp.i

CMakeFiles/vm_lib.dir/src/vm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/vm_lib.dir/src/vm.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/beihaozhou/Projects/miniVM/src/vm.cpp -o CMakeFiles/vm_lib.dir/src/vm.cpp.s

# Object files for target vm_lib
vm_lib_OBJECTS = \
"CMakeFiles/vm_lib.dir/src/vm.cpp.o"

# External object files for target vm_lib
vm_lib_EXTERNAL_OBJECTS =

libvm_lib.a: CMakeFiles/vm_lib.dir/src/vm.cpp.o
libvm_lib.a: CMakeFiles/vm_lib.dir/build.make
libvm_lib.a: CMakeFiles/vm_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/beihaozhou/Projects/miniVM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libvm_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/vm_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vm_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vm_lib.dir/build: libvm_lib.a
.PHONY : CMakeFiles/vm_lib.dir/build

CMakeFiles/vm_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vm_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vm_lib.dir/clean

CMakeFiles/vm_lib.dir/depend:
	cd /Users/beihaozhou/Projects/miniVM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/beihaozhou/Projects/miniVM /Users/beihaozhou/Projects/miniVM /Users/beihaozhou/Projects/miniVM/build /Users/beihaozhou/Projects/miniVM/build /Users/beihaozhou/Projects/miniVM/build/CMakeFiles/vm_lib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/vm_lib.dir/depend

