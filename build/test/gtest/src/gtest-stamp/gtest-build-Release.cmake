

set(command "C:/Program Files (x86)/CMake/bin/cmake.exe;--build;.;--config;Release")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-build-out.log"
  ERROR_FILE "D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-build-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-build-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "gtest build command succeeded.  See also D:/DIP_2016/assimp/build/test/gtest/src/gtest-stamp/gtest-build-*.log")
  message(STATUS "${msg}")
endif()
