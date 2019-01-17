cmake_minimum_required(VERSION 3.13)
project(tempMLPNN)

set(CMAKE_CXX_STANDARD 14)

#set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR})
#set(AWS_CORE_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/headers/aws-cpp-sdk-core/include)
#set(AWS_GREENGRASS_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/headers/aws-cpp-sdk-greengrass/include)
#set(AWS_GREENGRASS_CORE_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/headers/aws-greengrass-core-sdk-c/include)
#set(GLUT_glut_LIBRARY ${CMAKE_CURRENT_LIST_DIR}/library/openGL/freeglut.dll)
set(OPENGL_LIBRARY_DIR  ${CMAKE_CURRENT_SOURCE_DIR}/library/openGL)
set(GLUT_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/headers)
set(OPENGL_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/headers)
set(OPENGL_LIBRARIES ${CMAKE_CURRENT_SOURCE_DIR}/library/openGL)
set(GLUT_LIBRARIES ${CMAKE_CURRENT_SOURCE_DIR}/library/openGL)
set(OPENJPEG_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/headers)
set(OPENJPEG_LIBRARIES ${CMAKE_CURRENT_LIST_DIR}/library/openJPEG/lib)
set(GTEST_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/headers)
set(GTEST_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/library/gtest)
set(GTEST_MAIN_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/library/gtest)
#set(OpenJPEG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

add_subdirectory(googletest)

enable_testing()

#find_package(OpenCV REQUIRED)
#find_package(Boost REQUIRED)
#find_package(PkgConfig REQUIRED)
#find_package(OpenJPEG REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
#find_package(GTest REQUIRED)

#pkg_check_modules(JSONCPP jsoncpp)


#FIND_LIBRARY(AWSSDK_CORE_LIBRARIES NAMES libaws-cpp-sdk-core.so PATHS ${CMAKE_SOURCE_DIR}/library/aws NO_DEFAULT_PATH)
#FIND_LIBRARY(AWSSDK_GREENGRASS_LIBRARIES NAMES libaws-cpp-sdk-greengrass.so PATHS ${CMAKE_SOURCE_DIR}/library/aws NO_DEFAULT_PATH)
#FIND_LIBRARY(AWSSDK_GREENGRASS_CORE_LIBRARIES NAMES libaws-greengrass-core-sdk-c.so PATHS ${CMAKE_SOURCE_DIR}/library/aws NO_DEFAULT_PATH)
#FIND_LIBRARY(AWSSDK_CHECKSUM_LIBRARIES NAMES libaws-checksums PATHS ${CMAKE_SOURCE_DIR}/library/aws NO_DEFAULT_PATH)
#FIND_LIBRARY(OPENGL_LIBRARIES NAMES freeglut PATHS ${CMAKE_CURRENT_SOURCE_DIR}/library/openGL NO_DEFAULT_PATH)
#FIND_LIBRARY(GLUT_LIBRARIES NAMES freeglut PATHS ${CMAKE_CURRENT_SOURCE_DIR}/library/openGL NO_DEFAULT_PATH)
FIND_LIBRARY(OPENJPEG_LIBRARIES NAMES openjp2 ${CMAKE_CURRENT_SOURCE_DIR}/library/openJPEG/lib)
#FIND_LIBRARY(GTEST_LIBRARY NAMES gtest ${CMAKE_CURRENT_SOURCE_DIR}/library/gtest)
#FIND_LIBRARY(GTEST_MAIN_LIBRARY NAMES gtest_main ${CMAKE_CURRENT_SOURCE_DIR}/library/gtest)


include_directories(    ${OPENGL_INCLUDE_DIRS}
                        ${GLUT_INCLUDE_DIR}
                        ${OPENJPEG_INCLUDE_DIRS}
                        ${gtest_SOURCE_DIR}/include
                        ${gtest_SOURCE_DIR})

add_executable( tempMLPNN
                main.cpp
                UtilityFunctions.cpp
                UtilityFunctions.h
                Perceptron.cpp
                Perceptron.h
                Neuron.cpp
                Neuron.h
                Layer.cpp
                Layer.h
                Result.cpp
                Result.h
                ImageHeader.cpp
                ImageHeader.h
                LabelHeader.cpp
                LabelHeader.h BooleanArithmetic.cpp BooleanArithmetic.h Convolution.cpp Convolution.h unittest/testy.cpp)



target_link_libraries(  tempMLPNN
                        ${OPENGL_LIBRARIES}
                        ${OPENJPEG_LIBRARIES}
                        ${GLUT_LIBRARIES}
                        gtest
                        gtest_main)

install(TARGETS tempMLPNN DESTINATION ${CMAKE_CURRENT_LIST_DIR}/bin)


