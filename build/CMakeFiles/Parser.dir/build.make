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
include CMakeFiles/Parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Parser.dir/flags.make

CMakeFiles/Parser.dir/src/Parser.cpp.o: CMakeFiles/Parser.dir/flags.make
CMakeFiles/Parser.dir/src/Parser.cpp.o: ../src/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Parser.dir/src/Parser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Parser.dir/src/Parser.cpp.o -c /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/Parser.cpp

CMakeFiles/Parser.dir/src/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Parser.dir/src/Parser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/Parser.cpp > CMakeFiles/Parser.dir/src/Parser.cpp.i

CMakeFiles/Parser.dir/src/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Parser.dir/src/Parser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/src/Parser.cpp -o CMakeFiles/Parser.dir/src/Parser.cpp.s

CMakeFiles/Parser.dir/src/Parser.cpp.o.requires:

.PHONY : CMakeFiles/Parser.dir/src/Parser.cpp.o.requires

CMakeFiles/Parser.dir/src/Parser.cpp.o.provides: CMakeFiles/Parser.dir/src/Parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/Parser.dir/build.make CMakeFiles/Parser.dir/src/Parser.cpp.o.provides.build
.PHONY : CMakeFiles/Parser.dir/src/Parser.cpp.o.provides

CMakeFiles/Parser.dir/src/Parser.cpp.o.provides.build: CMakeFiles/Parser.dir/src/Parser.cpp.o


# Object files for target Parser
Parser_OBJECTS = \
"CMakeFiles/Parser.dir/src/Parser.cpp.o"

# External object files for target Parser
Parser_EXTERNAL_OBJECTS =

libParser.a: CMakeFiles/Parser.dir/src/Parser.cpp.o
libParser.a: CMakeFiles/Parser.dir/build.make
libParser.a: CMakeFiles/Parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libParser.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Parser.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Parser.dir/build: libParser.a

.PHONY : CMakeFiles/Parser.dir/build

CMakeFiles/Parser.dir/requires: CMakeFiles/Parser.dir/src/Parser.cpp.o.requires

.PHONY : CMakeFiles/Parser.dir/requires

CMakeFiles/Parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Parser.dir/clean

CMakeFiles/Parser.dir/depend:
	cd /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1 /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build /Users/yaroslav/github/BespalovHW2Task1/BespalovHW2Task1/build/CMakeFiles/Parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Parser.dir/depend

