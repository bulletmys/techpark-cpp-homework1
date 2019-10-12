cmake_minimum_required(VERSION 3.6)
project(techpatk_cpp_dz1)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory(lib/googletest-master)
include_directories(lib/googletest-master/googletest/include)
include_directories(lib/googletest-master/googlemock/include)

add_executable(test1 test/test.cpp)
add_executable(techpatk_cpp_dz1 main.c)


find_program(CTEST_MEMORYCHECK_COMMAND NAMES valgrind)
INCLUDE(Dart)

target_link_libraries(test1 gtest gtest_main)
target_link_libraries(techpatk_cpp_dz1 gtest gtest_main)

