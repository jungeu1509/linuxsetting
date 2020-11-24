if(NOT EXISTS "/home/ewjung/space/cmake/cmake-3.18.4/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: \"/home/ewjung/space/cmake/cmake-3.18.4/install_manifest.txt\"")
endif()

file(READ "/home/ewjung/space/cmake/cmake-3.18.4/install_manifest.txt" files)
string(REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
  if(EXISTS "$ENV{DESTDIR}${file}")
    exec_program(
      "/media/ewjung/f6813a7e-ee48-4924-8e7d-d3641b6cc72d/ew_space/cmake/cmake-3.18.4/Bootstrap.cmk/cmake" ARGS "-E rm -f \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    if("${rm_retval}" STREQUAL 0)
    else()
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif()
  else()
    message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
  endif()
endforeach()
