# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xbot_msgs: 11 messages, 1 services")

set(MSG_I_FLAGS "-Ixbot_msgs:/opt/open_mower_ros/src/lib/xbot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xbot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" "xbot_msgs/AbsolutePose:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" "xbot_msgs/MapArea:geometry_msgs/Polygon:geometry_msgs/Point32"
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" "geometry_msgs/Polygon:geometry_msgs/Point32"
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" "xbot_msgs/MapOverlayPolygon:geometry_msgs/Polygon:geometry_msgs/Point32"
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" "geometry_msgs/Polygon:geometry_msgs/Point32"
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" "xbot_msgs/ActionInfo"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)

### Generating Services
_generate_srv_cpp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)

### Generating Module File
_generate_module_cpp(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xbot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_gencpp)
add_dependencies(xbot_msgs_gencpp xbot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)
_generate_msg_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)

### Generating Services
_generate_srv_eus(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
)

### Generating Module File
_generate_module_eus(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xbot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_eus _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_geneus)
add_dependencies(xbot_msgs_geneus xbot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)

### Generating Services
_generate_srv_lisp(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)

### Generating Module File
_generate_module_lisp(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xbot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_genlisp)
add_dependencies(xbot_msgs_genlisp xbot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)
_generate_msg_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)

### Generating Services
_generate_srv_nodejs(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
)

### Generating Module File
_generate_module_nodejs(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xbot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_nodejs _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_gennodejs)
add_dependencies(xbot_msgs_gennodejs xbot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)

### Generating Services
_generate_srv_py(xbot_msgs
  "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)

### Generating Module File
_generate_module_py(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xbot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/AbsolutePose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/WheelTick.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataString.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/SensorDataDouble.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/Map.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapArea.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/ActionInfo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlay.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/msg/MapOverlayPolygon.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xbot_msgs/srv/RegisterActionsSrv.srv" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_genpy)
add_dependencies(xbot_msgs_genpy xbot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xbot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(xbot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xbot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(xbot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(xbot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xbot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(xbot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xbot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(xbot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(xbot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs)
  install(CODE "execute_process(COMMAND \"/root/miniforge3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xbot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(xbot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
