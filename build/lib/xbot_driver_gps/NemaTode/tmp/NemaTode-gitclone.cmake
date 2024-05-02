
if(NOT "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode-stamp/NemaTode-gitinfo.txt" IS_NEWER_THAN "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode-stamp/NemaTode-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode-stamp/NemaTode-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout "https://github.com/ckgt/NemaTode" "NemaTode"
    WORKING_DIRECTORY "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/ckgt/NemaTode'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout d061b62bacd201a89494a16702d53014c5b4f6e1 --
  WORKING_DIRECTORY "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'd061b62bacd201a89494a16702d53014c5b4f6e1'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode-stamp/NemaTode-gitinfo.txt"
    "/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode-stamp/NemaTode-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/opt/open_mower_ros/build/lib/xbot_driver_gps/NemaTode/src/NemaTode-stamp/NemaTode-gitclone-lastrun.txt'")
endif()

