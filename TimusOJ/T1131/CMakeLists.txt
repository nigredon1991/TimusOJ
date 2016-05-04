cmake_minimum_required(VERSION 3.3)
project(T131)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES T1131.cpp )
add_executable(T1131 ${SOURCE_FILES})