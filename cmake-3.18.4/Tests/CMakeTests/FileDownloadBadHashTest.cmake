if(NOT "/home/ewjung/space/cmake/cmake-3.18.4/Tests/CMakeTests" MATCHES "^/")
  set(slash /)
endif()
set(url "file://${slash}/home/ewjung/space/cmake/cmake-3.18.4/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/home/ewjung/space/cmake/cmake-3.18.4/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )
