function(create_library)

    cmake_parse_arguments(
        LIB
        ""
        "NAME;VISIBILITY;INCLUDE_DIR"
        "SOURCES"
        ${ARGN}
    )

    if(LIB_UNPARSED_ARGUMENTS)
        message(FATAL_ERROR 
                "create_library(): Unknown arguments: ${LIB_UNPARSED_ARGUMENTS}")
    endif()
    
    if(NOT LIB_NAME)
        message(FATAL_ERROR
                "create_library(): NAME is required.")
    endif()

    if(NOT LIB_VISIBILITY)
        message(FATAL_ERROR
                "create_library(): VISIBILITY is required.")
    endif()

    if(NOT LIB_INCLUDE_DIR)
        message(FATAL_ERROR
                "create_library(): LIB_INCLUDE_DIR is required.")
    endif()
    
    if(NOT LIB_SOURCES)
        message(FATAL_ERROR
                "create_library(): LIB_SOURCES is required.")
    endif()

    if(LIB_KEYWORDS_MISSING_VALUES)
        message(FATAL_ERROR
            "create_library(): Missing values for: ${LIB_KEYWORDS_MISSING_VALUES}"
        )
    endif()
    
    add_library(
        ${LIB_NAME}
        ${LIB_SOURCES}
    )

    target_include_directories(
        ${LIB_NAME}
        ${LIB_VISIBILITY}
        ${LIB_INCLUDE_DIR}
    )

endfunction()