cmake_minimum_required(VERSION 3.3)
project(T1005)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES T1005.cpp)
add_executable(T1005 ${SOURCE_FILES})