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
include CMakeFiles/AbstractFigure.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AbstractFigure.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AbstractFigure.dir/flags.make

CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o: CMakeFiles/AbstractFigure.dir/flags.make
CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o: ../src/AbstractFigure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o -c /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/AbstractFigure.cpp

CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/AbstractFigure.cpp > CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.i

CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/AbstractFigure.cpp -o CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.s

CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.requires:

.PHONY : CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.requires

CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.provides: CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.requires
	$(MAKE) -f CMakeFiles/AbstractFigure.dir/build.make CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.provides.build
.PHONY : CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.provides

CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.provides.build: CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o


# Object files for target AbstractFigure
AbstractFigure_OBJECTS = \
"CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o"

# External object files for target AbstractFigure
AbstractFigure_EXTERNAL_OBJECTS =

libAbstractFigure.a: CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o
libAbstractFigure.a: CMakeFiles/AbstractFigure.dir/build.make
libAbstractFigure.a: CMakeFiles/AbstractFigure.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libAbstractFigure.a"
	$(CMAKE_COMMAND) -P CMakeFiles/AbstractFigure.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AbstractFigure.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AbstractFigure.dir/build: libAbstractFigure.a

.PHONY : CMakeFiles/AbstractFigure.dir/build

CMakeFiles/AbstractFigure.dir/requires: CMakeFiles/AbstractFigure.dir/src/AbstractFigure.cpp.o.requires

.PHONY : CMakeFiles/AbstractFigure.dir/requires

CMakeFiles/AbstractFigure.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AbstractFigure.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AbstractFigure.dir/clean

CMakeFiles/AbstractFigure.dir/depend:
	cd /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles/AbstractFigure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AbstractFigure.dir/depend
