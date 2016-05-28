

set(command "C:/Program Files (x86)/CMake/bin/cmake.exe;-P;D:/DIP_2016/assimp/build/test/gtest/tmp/gtest-gitclone.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-download-out.log"
  ERROR_FILE "D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "gtest download command succeeded.  See also D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-download-*.log")
  message(STATUS "${msg}")
endif()
