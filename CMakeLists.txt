cmake_minimum_required(VERSION 3.21)
project(p101_posix_optional_examples
        VERSION 0.0.1
        DESCRIPTION ""
        LANGUAGES C)

add_subdirectory(aio)
add_subdirectory(pthread)
add_subdirectory(sched)
add_subdirectory(spawn)
add_subdirectory(stdlib)
add_subdirectory(sys)
