cmake_minimum_required(VERSION 3.3)
project(TimusOJ)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES TimusOJ.cpp T1131/T1131.cpp T1014/T1014.cpp)
add_subdirectory(T1000)
add_subdirectory(T1001)
add_subdirectory(T1005)
add_subdirectory(T1131)
add_subdirectory(T1014)
add_executable(TimusOJ ${SOURCE_FILES})