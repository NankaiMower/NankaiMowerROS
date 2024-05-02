# Install script for directory: /opt/open_mower_ros/src/lib/xbot_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/open_mower_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xbot_msgs/msg" TYPE FILE FILES
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg"
    "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xbot_msgs/srv" TYPE FILE FILES "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xbot_msgs/cmake" TYPE FILE FILES "/opt/open_mower_ros/build/lib/xbot_msgs/catkin_generated/installspace/xbot_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/include/xbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/share/roseus/ros/xbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/share/common-lisp/ros/xbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/share/gennodejs/ros/xbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/root/miniforge3/bin/python3" -m compileall "/opt/open_mower_ros/devel/lib/python3/dist-packages/xbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/lib/python3/dist-packages/xbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/opt/open_mower_ros/build/lib/xbot_msgs/catkin_generated/installspace/xbot_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xbot_msgs/cmake" TYPE FILE FILES "/opt/open_mower_ros/build/lib/xbot_msgs/catkin_generated/installspace/xbot_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xbot_msgs/cmake" TYPE FILE FILES
    "/opt/open_mower_ros/build/lib/xbot_msgs/catkin_generated/installspace/xbot_msgsConfig.cmake"
    "/opt/open_mower_ros/build/lib/xbot_msgs/catkin_generated/installspace/xbot_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xbot_msgs" TYPE FILE FILES "/opt/open_mower_ros/src/lib/xbot_msgs/package.xml")
endif()

