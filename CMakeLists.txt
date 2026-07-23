cmake_minimum_required(VERSION 3.20)

project(graph_draw 
        VERSION 1.0.0
        LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
SET(CMAKE_CXX_EXTENSIONS OFF)

include(cmake_modules/cmake_debug.cmake)
include(cmake_modules/create_library.cmake)
include(cmake_modules/execute_library.cmake)
include(cmake_modules/packages_control.cmake)

packages_control()

add_subdirectory(config)
add_subdirectory(third_party)
add_subdirectory(src)
add_subdirectory(app)