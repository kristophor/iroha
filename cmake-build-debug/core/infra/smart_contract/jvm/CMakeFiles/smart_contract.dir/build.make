# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/makoto/soramitsudev/iroha

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/makoto/soramitsudev/iroha/cmake-build-debug

# Include any dependencies generated for this target.
include core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/depend.make

# Include the progress variables for this target.
include core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/progress.make

# Include the compile flags for this target's objects.
include core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/flags.make

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/flags.make
core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o: ../core/infra/smart_contract/jvm/java_virtual_machine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makoto/soramitsudev/iroha/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o -c /Users/makoto/soramitsudev/iroha/core/infra/smart_contract/jvm/java_virtual_machine.cpp

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.i"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/makoto/soramitsudev/iroha/core/infra/smart_contract/jvm/java_virtual_machine.cpp > CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.i

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.s"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/makoto/soramitsudev/iroha/core/infra/smart_contract/jvm/java_virtual_machine.cpp -o CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.s

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.requires:

.PHONY : core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.requires

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.provides: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.requires
	$(MAKE) -f core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/build.make core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.provides.build
.PHONY : core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.provides

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.provides.build: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o


# Object files for target smart_contract
smart_contract_OBJECTS = \
"CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o"

# External object files for target smart_contract
smart_contract_EXTERNAL_OBJECTS =

core/infra/smart_contract/jvm/libsmart_contract.a: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o
core/infra/smart_contract/jvm/libsmart_contract.a: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/build.make
core/infra/smart_contract/jvm/libsmart_contract.a: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/makoto/soramitsudev/iroha/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsmart_contract.a"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm && $(CMAKE_COMMAND) -P CMakeFiles/smart_contract.dir/cmake_clean_target.cmake
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smart_contract.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/build: core/infra/smart_contract/jvm/libsmart_contract.a

.PHONY : core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/build

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/requires: core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/java_virtual_machine.cpp.o.requires

.PHONY : core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/requires

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/clean:
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm && $(CMAKE_COMMAND) -P CMakeFiles/smart_contract.dir/cmake_clean.cmake
.PHONY : core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/clean

core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/depend:
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/makoto/soramitsudev/iroha /Users/makoto/soramitsudev/iroha/core/infra/smart_contract/jvm /Users/makoto/soramitsudev/iroha/cmake-build-debug /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/infra/smart_contract/jvm/CMakeFiles/smart_contract.dir/depend

