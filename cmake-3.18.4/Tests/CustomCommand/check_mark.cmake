if(EXISTS "${MARK_FILE}")
  message(FATAL_ERROR "Custom command run more than once!")
else()
  file(WRITE "${MARK_FILE}" "check for running custom command twice\n")
endif()
