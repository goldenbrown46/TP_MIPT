cmake_minimum_required(VERSION 3.16.3)

project(task2)

add_library(my_lib SHARED ${CMAKE_CURRENT_SOURCE_DIR}/lib.h ${CMAKE_CURRENT_SOURCE_DIR}/lib.cpp)

set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../lib)