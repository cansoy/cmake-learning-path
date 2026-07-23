function(cmake_debug)

    cmake_parse_arguments(
        DEBUG
        "WARNING;VERBOSE"
        "MESSAGE;LABEL"
        ""
        ${ARGN}
    )

    if(DEBUG_UNPARSvaluesED_ARGUMENTS)
        message(FATAL_ERROR
            "cmake_debug(): Unknown arguments: ${DEBUG_UNPARSED_ARGUMENTS}"
        )
    endif()

    if(DEBUG_KEYWORDS_MISSING_VALUES)
        message(FATAL_ERROR
            "cmake_debug(): Missing values for: ${DEBUG_KEYWORDS_MISSING_VALUES}"
        )
    endif()

    if(NOT DEFINED DEBUG_MESSAGE OR DEBUG_MESSAGE STREQUAL "")
        message(FATAL_ERROR
            "cmake_debug(): MESSAGE is required."
        )
    endif()

    string(ASCII 27 ESC)
    set(GREEN  "${ESC}[32m")
    set(YELLOW "${ESC}[33m")
    set(RESET  "${ESC}[0m")

    message(STATUS
        "${GREEN}CMAKE DEBUG MESSAGE:${RESET} ${YELLOW}${DEBUG_MESSAGE}${RESET}"
    )

endfunction()