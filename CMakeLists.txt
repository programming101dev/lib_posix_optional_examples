cmake_minimum_required(VERSION 3.10)
project(p101_posix_optional_examples
        VERSION 0.0.1
        DESCRIPTION ""
        LANGUAGES C)

message(STATUS "Compiler being used: ${CMAKE_C_COMPILER}")

add_subdirectory(aio)
add_subdirectory(pthread)
add_subdirectory(sched)
add_subdirectory(spawn)
add_subdirectory(stdlib)
add_subdirectory(sys)
