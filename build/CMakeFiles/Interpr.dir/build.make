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
include CMakeFiles/Interpr.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Interpr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Interpr.dir/flags.make

CMakeFiles/Interpr.dir/src/main.cpp.o: CMakeFiles/Interpr.dir/flags.make
CMakeFiles/Interpr.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Interpr.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Interpr.dir/src/main.cpp.o -c /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/main.cpp

CMakeFiles/Interpr.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Interpr.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/main.cpp > CMakeFiles/Interpr.dir/src/main.cpp.i

CMakeFiles/Interpr.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Interpr.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/main.cpp -o CMakeFiles/Interpr.dir/src/main.cpp.s

CMakeFiles/Interpr.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Interpr.dir/src/main.cpp.o.requires

CMakeFiles/Interpr.dir/src/main.cpp.o.provides: CMakeFiles/Interpr.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Interpr.dir/build.make CMakeFiles/Interpr.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Interpr.dir/src/main.cpp.o.provides

CMakeFiles/Interpr.dir/src/main.cpp.o.provides.build: CMakeFiles/Interpr.dir/src/main.cpp.o


# Object files for target Interpr
Interpr_OBJECTS = \
"CMakeFiles/Interpr.dir/src/main.cpp.o"

# External object files for target Interpr
Interpr_EXTERNAL_OBJECTS =

Interpr: CMakeFiles/Interpr.dir/src/main.cpp.o
Interpr: CMakeFiles/Interpr.dir/build.make
Interpr: libAbstractFigure.a
Interpr: libScene.a
Interpr: libContainer.a
Interpr: libParser.a
Interpr: libFigures.a
Interpr: CMakeFiles/Interpr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Interpr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Interpr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Interpr.dir/build: Interpr

.PHONY : CMakeFiles/Interpr.dir/build

CMakeFiles/Interpr.dir/requires: CMakeFiles/Interpr.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/Interpr.dir/requires

CMakeFiles/Interpr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Interpr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Interpr.dir/clean

CMakeFiles/Interpr.dir/depend:
	cd /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles/Interpr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Interpr.dir/depend

