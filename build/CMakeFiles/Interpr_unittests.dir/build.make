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
include CMakeFiles/Interpr_unittests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Interpr_unittests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Interpr_unittests.dir/flags.make

CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o: CMakeFiles/Interpr_unittests.dir/flags.make
CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o: ../tests/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o -c /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/tests/main.cpp

CMakeFiles/Interpr_unittests.dir/tests/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Interpr_unittests.dir/tests/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/tests/main.cpp > CMakeFiles/Interpr_unittests.dir/tests/main.cpp.i

CMakeFiles/Interpr_unittests.dir/tests/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Interpr_unittests.dir/tests/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/tests/main.cpp -o CMakeFiles/Interpr_unittests.dir/tests/main.cpp.s

CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.requires:

.PHONY : CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.requires

CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.provides: CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Interpr_unittests.dir/build.make CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.provides.build
.PHONY : CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.provides

CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.provides.build: CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o


CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o: CMakeFiles/Interpr_unittests.dir/flags.make
CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o: ../tests/Interpr_unittests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o -c /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/tests/Interpr_unittests.cpp

CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/tests/Interpr_unittests.cpp > CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.i

CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/tests/Interpr_unittests.cpp -o CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.s

CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.requires:

.PHONY : CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.requires

CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.provides: CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.requires
	$(MAKE) -f CMakeFiles/Interpr_unittests.dir/build.make CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.provides.build
.PHONY : CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.provides

CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.provides.build: CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o


# Object files for target Interpr_unittests
Interpr_unittests_OBJECTS = \
"CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o" \
"CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o"

# External object files for target Interpr_unittests
Interpr_unittests_EXTERNAL_OBJECTS =

Interpr_unittests: CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o
Interpr_unittests: CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o
Interpr_unittests: CMakeFiles/Interpr_unittests.dir/build.make
Interpr_unittests: libAbstractFigure.a
Interpr_unittests: libScene.a
Interpr_unittests: libContainer.a
Interpr_unittests: libParser.a
Interpr_unittests: libFigures.a
Interpr_unittests: CMakeFiles/Interpr_unittests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Interpr_unittests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Interpr_unittests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Interpr_unittests.dir/build: Interpr_unittests

.PHONY : CMakeFiles/Interpr_unittests.dir/build

CMakeFiles/Interpr_unittests.dir/requires: CMakeFiles/Interpr_unittests.dir/tests/main.cpp.o.requires
CMakeFiles/Interpr_unittests.dir/requires: CMakeFiles/Interpr_unittests.dir/tests/Interpr_unittests.cpp.o.requires

.PHONY : CMakeFiles/Interpr_unittests.dir/requires

CMakeFiles/Interpr_unittests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Interpr_unittests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Interpr_unittests.dir/clean

CMakeFiles/Interpr_unittests.dir/depend:
	cd /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles/Interpr_unittests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Interpr_unittests.dir/depend

