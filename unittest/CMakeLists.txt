project(unittest)
cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)

#Adding Testing settings
set(GTEST_INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/headers)
set(GTEST_LIBRARY ${CMAKE_CURRENT_LIST_DIR}/library/gtest/Release/libgtest.a)
set(GTEST_MAIN_LIBRARY ${CMAKE_CURRENT_LIST_DIR}/library/gtest/Release/libgtest_main.a)

#add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/googletest/googletest)
enable_testing()
#find_package(GTest REQUIRED)

FIND_LIBRARY(GTEST_MAIN_LIBRARY NAMES gtest_main ${CMAKE_CURRENT_SOURCE_DIR}/library/gtest/Release)

add_executable( unittest
                testy.cpp main.cpp)

include_directories(${GTEST_INCLUDE_DIR})

target_link_libraries(	unittest
                        gtest
                        gtest_main)

#add_test( NAME unittest COMMAND S)

install(TARGETS unittest DESTINATION ${CMAKE_CURRENT_LIST_DIR}/bin )