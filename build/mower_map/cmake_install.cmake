# Install script for directory: /opt/open_mower_ros/src/mower_map

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mower_map/msg" TYPE FILE FILES
    "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
    "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mower_map/srv" TYPE FILE FILES
    "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv"
    "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mower_map/cmake" TYPE FILE FILES "/opt/open_mower_ros/build/mower_map/catkin_generated/installspace/mower_map-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/include/mower_map")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/share/roseus/ros/mower_map")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/share/common-lisp/ros/mower_map")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/share/gennodejs/ros/mower_map")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/root/miniforge3/bin/python3" -m compileall "/opt/open_mower_ros/devel/lib/python3/dist-packages/mower_map")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/opt/open_mower_ros/devel/lib/python3/dist-packages/mower_map")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/opt/open_mower_ros/build/mower_map/catkin_generated/installspace/mower_map.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mower_map/cmake" TYPE FILE FILES "/opt/open_mower_ros/build/mower_map/catkin_generated/installspace/mower_map-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mower_map/cmake" TYPE FILE FILES
    "/opt/open_mower_ros/build/mower_map/catkin_generated/installspace/mower_mapConfig.cmake"
    "/opt/open_mower_ros/build/mower_map/catkin_generated/installspace/mower_mapConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mower_map" TYPE FILE FILES "/opt/open_mower_ros/src/mower_map/package.xml")
endif()

