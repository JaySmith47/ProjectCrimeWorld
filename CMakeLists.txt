cmake_minimum_required(VERSION 3.10)
project(ProjectCrimeWorld)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(raylib)
add_subdirectory(nbnet)

include_directories(raylib/src)
include_directories(nbnet/include)

add_executable(ProjectCrimeWorld main.cpp)
target_link_libraries(ProjectCrimeWorld raylib nbnet)
