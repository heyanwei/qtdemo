cmake_minimum_required(VERSION 3.10)

project(demo)

SET(CMAKE_PREFIX_PATH "E:\\Qt\\Qt5.9.2\\5.9.2\\mingw53_32\\")

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Core REQUIRED)

aux_source_directory(. DIRSRCS)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_executable(
    demo
    ${DIRSRCS}
    )

target_link_libraries(demo Qt5::Core)