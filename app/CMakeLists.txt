execute_library(
    LIBRARY_EXIST
    NAME app_output
    VISIBILITY PUBLIC
    MAIN_SOURCES
        main.cpp
    LIBRARY_NAMES
        my_math_lib
        my_pyhsics_lib
        my_science_lib
        nlohmann_json::nlohmann_json
        fmt::fmt
        Catch2::Catch2WithMain
)