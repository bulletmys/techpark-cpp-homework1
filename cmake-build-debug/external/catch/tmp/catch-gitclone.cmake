
if(NOT "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/stamp/catch-gitinfo.txt" IS_NEWER_THAN "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/stamp/catch-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/stamp/catch-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --depth 1 --no-single-branch "https://github.com/Bareflank/catch.git" "src"
    WORKING_DIRECTORY "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/Bareflank/catch.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout v1.2 --
  WORKING_DIRECTORY "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v1.2'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  submodule update --recursive --init 
  WORKING_DIRECTORY "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/stamp/catch-gitinfo.txt"
    "/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/stamp/catch-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/bulletmys/CLionProjects/techpatk-cpp-dz1/cmake-build-debug/external/catch/stamp/catch-gitclone-lastrun.txt'")
endif()

