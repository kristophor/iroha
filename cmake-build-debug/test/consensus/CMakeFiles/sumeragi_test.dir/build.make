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
include test/consensus/CMakeFiles/sumeragi_test.dir/depend.make

# Include the progress variables for this target.
include test/consensus/CMakeFiles/sumeragi_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/consensus/CMakeFiles/sumeragi_test.dir/flags.make

test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o: test/consensus/CMakeFiles/sumeragi_test.dir/flags.make
test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o: ../test/consensus/sumeragi_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makoto/soramitsudev/iroha/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o -c /Users/makoto/soramitsudev/iroha/test/consensus/sumeragi_test.cpp

test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.i"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/makoto/soramitsudev/iroha/test/consensus/sumeragi_test.cpp > CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.i

test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.s"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/makoto/soramitsudev/iroha/test/consensus/sumeragi_test.cpp -o CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.s

test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.requires:

.PHONY : test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.requires

test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.provides: test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.requires
	$(MAKE) -f test/consensus/CMakeFiles/sumeragi_test.dir/build.make test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.provides.build
.PHONY : test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.provides

test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.provides.build: test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o


# Object files for target sumeragi_test
sumeragi_test_OBJECTS = \
"CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o"

# External object files for target sumeragi_test
sumeragi_test_EXTERNAL_OBJECTS =

my_test_bin/sumeragi_test: test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o
my_test_bin/sumeragi_test: test/consensus/CMakeFiles/sumeragi_test.dir/build.make
my_test_bin/sumeragi_test: lib/libobjects.a
my_test_bin/sumeragi_test: core/infra/crypto/libbase64.a
my_test_bin/sumeragi_test: core/infra/crypto/libsignature.a
my_test_bin/sumeragi_test: lib/libsumeragi.a
my_test_bin/sumeragi_test: core/infra/connection/libconnection_with_grpc.a
my_test_bin/sumeragi_test: core/infra/service/libpeer_service_with_json.a
my_test_bin/sumeragi_test: lib/libconsensus_event.a
my_test_bin/sumeragi_test: core/service/libjson_parse_with_nlohman.a
my_test_bin/sumeragi_test: core/model/libtransaction.a
my_test_bin/sumeragi_test: lib/libconsensus_event.a
my_test_bin/sumeragi_test: core/validation/libvalidator.a
my_test_bin/sumeragi_test: core/infra/crypto/libsignature.a
my_test_bin/sumeragi_test: core/infra/crypto/libbase64.a
my_test_bin/sumeragi_test: core/model/libtransaction.a
my_test_bin/sumeragi_test: lib/libcommands.a
my_test_bin/sumeragi_test: lib/libobjects.a
my_test_bin/sumeragi_test: lib/libevent_repository.a
my_test_bin/sumeragi_test: lib/liblogger.a
my_test_bin/sumeragi_test: lib/libdatetime.a
my_test_bin/sumeragi_test: test/consensus/CMakeFiles/sumeragi_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/makoto/soramitsudev/iroha/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../my_test_bin/sumeragi_test"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sumeragi_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/consensus/CMakeFiles/sumeragi_test.dir/build: my_test_bin/sumeragi_test

.PHONY : test/consensus/CMakeFiles/sumeragi_test.dir/build

test/consensus/CMakeFiles/sumeragi_test.dir/requires: test/consensus/CMakeFiles/sumeragi_test.dir/sumeragi_test.cpp.o.requires

.PHONY : test/consensus/CMakeFiles/sumeragi_test.dir/requires

test/consensus/CMakeFiles/sumeragi_test.dir/clean:
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus && $(CMAKE_COMMAND) -P CMakeFiles/sumeragi_test.dir/cmake_clean.cmake
.PHONY : test/consensus/CMakeFiles/sumeragi_test.dir/clean

test/consensus/CMakeFiles/sumeragi_test.dir/depend:
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/makoto/soramitsudev/iroha /Users/makoto/soramitsudev/iroha/test/consensus /Users/makoto/soramitsudev/iroha/cmake-build-debug /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus /Users/makoto/soramitsudev/iroha/cmake-build-debug/test/consensus/CMakeFiles/sumeragi_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/consensus/CMakeFiles/sumeragi_test.dir/depend

