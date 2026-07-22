set(PROJECT_NAME "p101_posix_optional_examples")
set(PROJECT_VERSION "1.0.0")
set(PROJECT_DESCRIPTION "Examples for lib_posix_optional (p101 optional-POSIX wrappers)")
set(PROJECT_LANGUAGE "C")

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Common compiler flags
set(STANDARD_FLAGS
        -D_POSIX_C_SOURCE=200809L
        -D_XOPEN_SOURCE=700
        #-D_GNU_SOURCE
        #-D_DARWIN_C_SOURCE
        #-D__BSD_VISIBLE
        -Werror
)

# Define targets — one executable per example. Add a line here and a matching
# <target>/main.c to grow the set.
set(EXECUTABLE_TARGETS
        posix_memalign
)

set(LIBRARY_TARGETS "")

set(_P101_POSIX_OPTIONAL_EXAMPLE_LIBS
        p101_error
        p101_env
        p101_posix_optional
)

set(posix_memalign_SOURCES stdlib/posix_memalign/main.c)
set(posix_memalign_HEADERS "")
set(posix_memalign_LINK_LIBRARIES ${_P101_POSIX_OPTIONAL_EXAMPLE_LIBS})
