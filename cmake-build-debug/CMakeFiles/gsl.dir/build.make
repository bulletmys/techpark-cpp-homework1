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
CMAKE_COMMAND = /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bulletmys/CLionProjects/techpatk-cpp-dz1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug

# Utility rule file for gsl.

# Include the progress variables for this target.
include CMakeFiles/gsl.dir/progress.make

CMakeFiles/gsl: CMakeFiles/gsl-complete


CMakeFiles/gsl-complete: external/gsl/stamp/gsl-install
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-mkdir
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-download
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-update
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-patch
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-configure
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-build
CMakeFiles/gsl-complete: external/gsl/stamp/gsl-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'gsl'"
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles/gsl-complete
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-done

external/gsl/stamp/gsl-install: external/gsl/stamp/gsl-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'gsl'"
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build && $(MAKE) install
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-install

external/gsl/stamp/gsl-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'gsl'"
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/src
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/prefix
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/tmp
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/download
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E make_directory /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-mkdir

external/gsl/stamp/gsl-download: external/gsl/stamp/gsl-gitinfo.txt
external/gsl/stamp/gsl-download: external/gsl/stamp/gsl-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'gsl'"
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -P /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/tmp/gsl-gitclone.cmake
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-download

external/gsl/stamp/gsl-update: external/gsl/stamp/gsl-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'gsl'"
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/src && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -P /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/tmp/gsl-gitupdate.cmake

external/gsl/stamp/gsl-patch: external/gsl/stamp/gsl-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'gsl'"
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E echo_append
	/home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-patch

external/gsl/stamp/gsl-configure: external/gsl/tmp/gsl-cfgcmd.txt
external/gsl/stamp/gsl-configure: external/gsl/stamp/gsl-update
external/gsl/stamp/gsl-configure: external/gsl/stamp/gsl-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'gsl'"
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -DCMAKE_INSTALL_PREFIX=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug "-GCodeBlocks - Unix Makefiles" /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/src
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-configure

external/gsl/stamp/gsl-build: external/gsl/stamp/gsl-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'gsl'"
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build && $(MAKE)
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/build && /home/bulletmys/Документы/clion-2019.2.3/bin/cmake/linux/bin/cmake -E touch /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/gsl/stamp/gsl-build

gsl: CMakeFiles/gsl
gsl: CMakeFiles/gsl-complete
gsl: external/gsl/stamp/gsl-install
gsl: external/gsl/stamp/gsl-mkdir
gsl: external/gsl/stamp/gsl-download
gsl: external/gsl/stamp/gsl-update
gsl: external/gsl/stamp/gsl-patch
gsl: external/gsl/stamp/gsl-configure
gsl: external/gsl/stamp/gsl-build
gsl: CMakeFiles/gsl.dir/build.make

.PHONY : gsl

# Rule to build all files generated by this target.
CMakeFiles/gsl.dir/build: gsl

.PHONY : CMakeFiles/gsl.dir/build

CMakeFiles/gsl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gsl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gsl.dir/clean

CMakeFiles/gsl.dir/depend:
	cd /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bulletmys/CLionProjects/techpatk-cpp-dz1 /home/bulletmys/CLionProjects/techpatk-cpp-dz1 /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug /home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/CMakeFiles/gsl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gsl.dir/depend
