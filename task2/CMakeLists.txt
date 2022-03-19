cmake_minimum_required(VERSION 3.16.3)

project(Tech2)

add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/A/index.h
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/A
    COMMAND python3 preparing.py
)

find_package(GTest REQUIRED)
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${GTEST_INCLUDE_DIRS})

add_subdirectory(B)

add_executable(C ${CMAKE_CURRENT_SOURCE_DIR}/C/main.cpp)
add_executable(runTest 
                ${CMAKE_CURRENT_SOURCE_DIR}/C/main_test.cpp 
                ${CMAKE_CURRENT_SOURCE_DIR}/C/test.cpp
                ${CMAKE_CURRENT_SOURCE_DIR}/C/test.h 
)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)


target_link_libraries(C my_lib)
target_link_libraries(runTest ${GTEST_LIBRARIES} pthread)
