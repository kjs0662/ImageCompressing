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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jinseonkim/go/src/libs/thumbnailer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jinseonkim/go/src/libs/thumbnailer

# Include any dependencies generated for this target.
include CMakeFiles/thumbnailer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/thumbnailer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/thumbnailer.dir/flags.make

CMakeFiles/thumbnailer.dir/imageCompressor.c.o: CMakeFiles/thumbnailer.dir/flags.make
CMakeFiles/thumbnailer.dir/imageCompressor.c.o: imageCompressor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinseonkim/go/src/libs/thumbnailer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/thumbnailer.dir/imageCompressor.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/thumbnailer.dir/imageCompressor.c.o   -c /Users/jinseonkim/go/src/libs/thumbnailer/imageCompressor.c

CMakeFiles/thumbnailer.dir/imageCompressor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/thumbnailer.dir/imageCompressor.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jinseonkim/go/src/libs/thumbnailer/imageCompressor.c > CMakeFiles/thumbnailer.dir/imageCompressor.c.i

CMakeFiles/thumbnailer.dir/imageCompressor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/thumbnailer.dir/imageCompressor.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jinseonkim/go/src/libs/thumbnailer/imageCompressor.c -o CMakeFiles/thumbnailer.dir/imageCompressor.c.s

# Object files for target thumbnailer
thumbnailer_OBJECTS = \
"CMakeFiles/thumbnailer.dir/imageCompressor.c.o"

# External object files for target thumbnailer
thumbnailer_EXTERNAL_OBJECTS =

libthumbnailer.a: CMakeFiles/thumbnailer.dir/imageCompressor.c.o
libthumbnailer.a: CMakeFiles/thumbnailer.dir/build.make
libthumbnailer.a: CMakeFiles/thumbnailer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jinseonkim/go/src/libs/thumbnailer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libthumbnailer.a"
	$(CMAKE_COMMAND) -P CMakeFiles/thumbnailer.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thumbnailer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/thumbnailer.dir/build: libthumbnailer.a

.PHONY : CMakeFiles/thumbnailer.dir/build

CMakeFiles/thumbnailer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/thumbnailer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/thumbnailer.dir/clean

CMakeFiles/thumbnailer.dir/depend:
	cd /Users/jinseonkim/go/src/libs/thumbnailer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jinseonkim/go/src/libs/thumbnailer /Users/jinseonkim/go/src/libs/thumbnailer /Users/jinseonkim/go/src/libs/thumbnailer /Users/jinseonkim/go/src/libs/thumbnailer /Users/jinseonkim/go/src/libs/thumbnailer/CMakeFiles/thumbnailer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/thumbnailer.dir/depend
