# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.6\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.6\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\tempML\tempMLPNN_V2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\tempML\tempMLPNN_V2\cmake-build-release

# Include any dependencies generated for this target.
include googletest\googlemock\CMakeFiles\gmock_main.dir\depend.make

# Include the progress variables for this target.
include googletest\googlemock\CMakeFiles\gmock_main.dir\progress.make

# Include the compile flags for this target's objects.
include googletest\googlemock\CMakeFiles\gmock_main.dir\flags.make

googletest\googlemock\CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.obj: googletest\googlemock\CMakeFiles\gmock_main.dir\flags.make
googletest\googlemock\CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.obj: ..\googletest\googletest\src\gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\tempMLPNN_V2\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googletest/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.obj"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.obj /Fd..\..\bin\gmock_main.pdb /FS -c D:\tempML\tempMLPNN_V2\googletest\googletest\src\gtest-all.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.i"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe > CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\tempMLPNN_V2\googletest\googletest\src\gtest-all.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.s"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.s /c D:\tempML\tempMLPNN_V2\googletest\googletest\src\gtest-all.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock-all.cc.obj: googletest\googlemock\CMakeFiles\gmock_main.dir\flags.make
googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock-all.cc.obj: ..\googletest\googlemock\src\gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\tempMLPNN_V2\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object googletest/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.obj"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\gmock_main.dir\src\gmock-all.cc.obj /Fd..\..\bin\gmock_main.pdb /FS -c D:\tempML\tempMLPNN_V2\googletest\googlemock\src\gmock-all.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock-all.cc.i"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe > CMakeFiles\gmock_main.dir\src\gmock-all.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\tempMLPNN_V2\googletest\googlemock\src\gmock-all.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock-all.cc.s"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\gmock_main.dir\src\gmock-all.cc.s /c D:\tempML\tempMLPNN_V2\googletest\googlemock\src\gmock-all.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock_main.cc.obj: googletest\googlemock\CMakeFiles\gmock_main.dir\flags.make
googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock_main.cc.obj: ..\googletest\googlemock\src\gmock_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\tempML\tempMLPNN_V2\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object googletest/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\gmock_main.dir\src\gmock_main.cc.obj /Fd..\..\bin\gmock_main.pdb /FS -c D:\tempML\tempMLPNN_V2\googletest\googlemock\src\gmock_main.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock_main.cc.i"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe > CMakeFiles\gmock_main.dir\src\gmock_main.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\tempML\tempMLPNN_V2\googletest\googlemock\src\gmock_main.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock_main.cc.s"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\gmock_main.dir\src\gmock_main.cc.s /c D:\tempML\tempMLPNN_V2\googletest\googlemock\src\gmock_main.cc
<<
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

# Object files for target gmock_main
gmock_main_OBJECTS = \
"CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.obj" \
"CMakeFiles\gmock_main.dir\src\gmock-all.cc.obj" \
"CMakeFiles\gmock_main.dir\src\gmock_main.cc.obj"

# External object files for target gmock_main
gmock_main_EXTERNAL_OBJECTS =

lib\gmock_main.lib: googletest\googlemock\CMakeFiles\gmock_main.dir\__\googletest\src\gtest-all.cc.obj
lib\gmock_main.lib: googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock-all.cc.obj
lib\gmock_main.lib: googletest\googlemock\CMakeFiles\gmock_main.dir\src\gmock_main.cc.obj
lib\gmock_main.lib: googletest\googlemock\CMakeFiles\gmock_main.dir\build.make
lib\gmock_main.lib: googletest\googlemock\CMakeFiles\gmock_main.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\tempML\tempMLPNN_V2\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ..\..\lib\gmock_main.lib"
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	$(CMAKE_COMMAND) -P CMakeFiles\gmock_main.dir\cmake_clean_target.cmake
	cd D:\tempML\tempMLPNN_V2\cmake-build-release
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\link.exe /lib /nologo /machine:X86 /out:..\..\lib\gmock_main.lib @CMakeFiles\gmock_main.dir\objects1.rsp 
	cd D:\tempML\tempMLPNN_V2\cmake-build-release

# Rule to build all files generated by this target.
googletest\googlemock\CMakeFiles\gmock_main.dir\build: lib\gmock_main.lib

.PHONY : googletest\googlemock\CMakeFiles\gmock_main.dir\build

googletest\googlemock\CMakeFiles\gmock_main.dir\clean:
	cd D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock
	$(CMAKE_COMMAND) -P CMakeFiles\gmock_main.dir\cmake_clean.cmake
	cd D:\tempML\tempMLPNN_V2\cmake-build-release
.PHONY : googletest\googlemock\CMakeFiles\gmock_main.dir\clean

googletest\googlemock\CMakeFiles\gmock_main.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\tempML\tempMLPNN_V2 D:\tempML\tempMLPNN_V2\googletest\googlemock D:\tempML\tempMLPNN_V2\cmake-build-release D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock D:\tempML\tempMLPNN_V2\cmake-build-release\googletest\googlemock\CMakeFiles\gmock_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : googletest\googlemock\CMakeFiles\gmock_main.dir\depend
