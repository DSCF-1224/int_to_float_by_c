# How to run (each command)
# $ ./reset_build.sh
# $ cd b*
# $ time cmake -DCMAKE_BUILD_TYPE=Debug/Relase ..
# $ time make ..
# $ time build/test.exe
# $ cd -

# How to run (1 line)
# $ ./reset_build.sh && cd b* && time cmake -DCMAKE_BUILD_TYPE=Debug .. && time make && time ./test.exe && cd -
# $ ./reset_build.sh && cd b* && time cmake -DCMAKE_BUILD_TYPE=Release .. && time make && time ./test.exe && cd -

cmake_minimum_required(VERSION 3.0)



enable_language(C Fortran)
project(test.exe Fortran)



set(CMAKE_C_COMPILER               "gcc")
set(CMAKE_C_FLAGS                  "-Wall -Wextra")
set(CMAKE_C_FLAGS_DEBUG            "-g -O0")
set(CMAKE_Fortran_FLAGS            "-ffree-line-length-none -fimplicit-none -pedantic -std=f2008 -Wall -Werror -Wextra")
set(CMAKE_Fortran_FLAGS_DEBUG      "-fbacktrace -fbounds-check -g -O0")
set(CMAKE_Fortran_FLAGS_RELEASE    "-O2")
set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/fortran-modules)



if (NOT (EXISTS ${CMAKE_Fortran_MODULE_DIRECTORY}/int_to_float_by_c))
    add_subdirectory(
		${CMAKE_CURRENT_SOURCE_DIR}/../src
		${CMAKE_Fortran_MODULE_DIRECTORY}/int_to_float_by_c
	)
endif()



add_executable(${PROJECT_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/main.f90
)



target_link_libraries( ${PROJECT_NAME} PRIVATE _int_to_float_by_c )

# EOF
