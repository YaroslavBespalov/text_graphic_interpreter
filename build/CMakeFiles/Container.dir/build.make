# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build

# Include any dependencies generated for this target.
include CMakeFiles/Container.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Container.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Container.dir/flags.make

CMakeFiles/Container.dir/src/Container.cpp.o: CMakeFiles/Container.dir/flags.make
CMakeFiles/Container.dir/src/Container.cpp.o: ../src/Container.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Container.dir/src/Container.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Container.dir/src/Container.cpp.o -c /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/Container.cpp

CMakeFiles/Container.dir/src/Container.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Container.dir/src/Container.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/Container.cpp > CMakeFiles/Container.dir/src/Container.cpp.i

CMakeFiles/Container.dir/src/Container.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Container.dir/src/Container.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/Container.cpp -o CMakeFiles/Container.dir/src/Container.cpp.s

CMakeFiles/Container.dir/src/Container.cpp.o.requires:

.PHONY : CMakeFiles/Container.dir/src/Container.cpp.o.requires

CMakeFiles/Container.dir/src/Container.cpp.o.provides: CMakeFiles/Container.dir/src/Container.cpp.o.requires
	$(MAKE) -f CMakeFiles/Container.dir/build.make CMakeFiles/Container.dir/src/Container.cpp.o.provides.build
.PHONY : CMakeFiles/Container.dir/src/Container.cpp.o.provides

CMakeFiles/Container.dir/src/Container.cpp.o.provides.build: CMakeFiles/Container.dir/src/Container.cpp.o


# Object files for target Container
Container_OBJECTS = \
"CMakeFiles/Container.dir/src/Container.cpp.o"

# External object files for target Container
Container_EXTERNAL_OBJECTS =

libContainer.a: CMakeFiles/Container.dir/src/Container.cpp.o
libContainer.a: CMakeFiles/Container.dir/build.make
libContainer.a: CMakeFiles/Container.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libContainer.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Container.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Container.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Container.dir/build: libContainer.a

.PHONY : CMakeFiles/Container.dir/build

CMakeFiles/Container.dir/requires: CMakeFiles/Container.dir/src/Container.cpp.o.requires

.PHONY : CMakeFiles/Container.dir/requires

CMakeFiles/Container.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Container.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Container.dir/clean

CMakeFiles/Container.dir/depend:
	cd /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles/Container.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Container.dir/depend

