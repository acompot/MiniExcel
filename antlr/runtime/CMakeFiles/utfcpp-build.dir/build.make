# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_SOURCE_DIR = /home/ilya/Programming/16Sprint/Superfinal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/Programming/16Sprint/Superfinal

# Utility rule file for utfcpp-build.

# Include any custom commands dependencies for this target.
include antlr/runtime/CMakeFiles/utfcpp-build.dir/compiler_depend.make

# Include the progress variables for this target.
include antlr/runtime/CMakeFiles/utfcpp-build.dir/progress.make

antlr/runtime/CMakeFiles/utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-build

antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Programming/16Sprint/Superfinal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Performing build step for 'utfcpp'"
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-build && $(MAKE)
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-build && /usr/bin/cmake -E touch /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-build

antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-configure: antlr/runtime/utfcpp-prefix/tmp/utfcpp-cfgcmd.txt
antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-configure: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Programming/16Sprint/Superfinal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing configure step for 'utfcpp'"
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX=/home/ilya/Programming/16Sprint/Superfinal/runtime/thirdparty/utfcpp/install -Dgtest_force_shared_crt=ON "-GUnix Makefiles" /home/ilya/Programming/16Sprint/Superfinal/runtime/thirdparty/utfcpp
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-build && /usr/bin/cmake -E touch /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-configure

antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-patch: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Programming/16Sprint/Superfinal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No patch step for 'utfcpp'"
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime && /usr/bin/cmake -E echo_append
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime && /usr/bin/cmake -E touch /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-patch

antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-download: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-gitinfo.txt
antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-download: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Programming/16Sprint/Superfinal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'utfcpp'"
	cd /home/ilya/Programming/16Sprint/Superfinal/runtime/thirdparty && /usr/bin/cmake -P /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/tmp/utfcpp-gitclone.cmake
	cd /home/ilya/Programming/16Sprint/Superfinal/runtime/thirdparty && /usr/bin/cmake -E touch /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-download

antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Programming/16Sprint/Superfinal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Creating directories for 'utfcpp'"
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime && /usr/bin/cmake -P /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/tmp/utfcpp-mkdirs.cmake
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime && /usr/bin/cmake -E touch /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-mkdir

utfcpp-build: antlr/runtime/CMakeFiles/utfcpp-build
utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-build
utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-configure
utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-download
utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-mkdir
utfcpp-build: antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/utfcpp-patch
utfcpp-build: antlr/runtime/CMakeFiles/utfcpp-build.dir/build.make
.PHONY : utfcpp-build

# Rule to build all files generated by this target.
antlr/runtime/CMakeFiles/utfcpp-build.dir/build: utfcpp-build
.PHONY : antlr/runtime/CMakeFiles/utfcpp-build.dir/build

antlr/runtime/CMakeFiles/utfcpp-build.dir/clean:
	cd /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime && $(CMAKE_COMMAND) -P CMakeFiles/utfcpp-build.dir/cmake_clean.cmake
.PHONY : antlr/runtime/CMakeFiles/utfcpp-build.dir/clean

antlr/runtime/CMakeFiles/utfcpp-build.dir/depend:
	cd /home/ilya/Programming/16Sprint/Superfinal && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Programming/16Sprint/Superfinal /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime /home/ilya/Programming/16Sprint/Superfinal /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime /home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/CMakeFiles/utfcpp-build.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : antlr/runtime/CMakeFiles/utfcpp-build.dir/depend

