cmake_minimum_required(VERSION 3.3)
project(T1000)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES T1000.cpp )
add_executable(T1000 ${SOURCE_FILES})