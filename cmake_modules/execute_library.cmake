function(execute_library)

    cmake_parse_arguments(
        APP
        "LIBRARY_EXIST"
        "NAME;VISIBILITY"
        "MAIN_SOURCES;LIBRARY_NAMES"
        ${ARGN}
    )

    if(APP_UNPARSED_ARGUMENTS)
        message(FATAL_ERROR
                "execute_library(): Unknown arguments: ${APP_UNPARSED_ARGUMENTS}")
    endif()

    if(NOT APP_NAME)
        message(FATAL_ERROR
                "execute_library(): NAME is required.")
    endif()

    if(NOT APP_MAIN_SOURCES)
        message(FATAL_ERROR
                "execute_library(): MAIN_SOURCES is required.")
    endif()

    if(NOT APP_VISIBILITY)
        message(FATAL_ERROR
                "execute_library(): VISIBILITY is required.")
    endif()

    if(APP_KEYWORDS_MISSING_VALUES)
        message(FATAL_ERROR
                "execute_library(): KEYWORDS_MISSING_VALUES is required.")
    endif()
    
    if(APP_LIBRARY_EXIST)
        if(NOT APP_LIBRARY_NAMES)
            message(FATAL_ERROR
                "execute_library(): LIBRARY_NAMES is required.")
        endif()
        
    endif()

    if(NOT APP_LIBRARY_EXIST)
        add_executable(
            ${APP_NAME}
            ${APP_MAIN_SOURCES}
        )

    else()
        add_executable(
            ${APP_NAME}
            ${APP_MAIN_SOURCES}
        )
        target_link_libraries(
            ${APP_NAME}
            ${APP_VISIBILITY}
            ${APP_LIBRARY_NAMES}
        )
    endif()

endfunction()
