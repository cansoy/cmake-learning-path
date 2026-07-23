add_subdirectory(json)
add_subdirectory(fmt)
add_subdirectory(Catch2)

if(NOT TARGET nlohmann_json::nlohmann_json)
    message(FATAL_ERROR
        "nlohmann/json was not loaded."
    )
endif()

if(NOT TARGET fmt::fmt)
    message(FATAL_ERROR
        "fmt was not loaded."
    )
endif()

if(NOT TARGET Catch2::Catch2WithMain)
    message(FATAL_ERROR
        "Catch2 was not loaded."
    )
endif()