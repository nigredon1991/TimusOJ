cmake_minimum_required(VERSION 3.3)
project(T1014)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES T1014.cpp)
add_executable(T1014 ${SOURCE_FILES})