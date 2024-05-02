# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mower_map: 2 messages, 10 services")

set(MSG_I_FLAGS "-Imower_map:/opt/open_mower_ros/src/mower_map/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mower_map_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" "geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" "geometry_msgs/Point32:geometry_msgs/Polygon:mower_map/MapArea"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" "geometry_msgs/Point32:geometry_msgs/Polygon:mower_map/MapArea"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" "geometry_msgs/Point32:geometry_msgs/Polygon:mower_map/MapArea"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" NAME_WE)
add_custom_target(_mower_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_map" "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_msg_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)

### Generating Services
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)
_generate_srv_cpp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
)

### Generating Module File
_generate_module_cpp(mower_map
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mower_map_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mower_map_generate_messages mower_map_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_cpp _mower_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_map_gencpp)
add_dependencies(mower_map_gencpp mower_map_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_map_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_msg_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)

### Generating Services
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)
_generate_srv_eus(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
)

### Generating Module File
_generate_module_eus(mower_map
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mower_map_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mower_map_generate_messages mower_map_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_eus _mower_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_map_geneus)
add_dependencies(mower_map_geneus mower_map_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_map_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_msg_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)

### Generating Services
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)
_generate_srv_lisp(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
)

### Generating Module File
_generate_module_lisp(mower_map
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mower_map_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mower_map_generate_messages mower_map_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_lisp _mower_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_map_genlisp)
add_dependencies(mower_map_genlisp mower_map_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_map_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_msg_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)

### Generating Services
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)
_generate_srv_nodejs(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
)

### Generating Module File
_generate_module_nodejs(mower_map
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mower_map_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mower_map_generate_messages mower_map_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_nodejs _mower_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_map_gennodejs)
add_dependencies(mower_map_gennodejs mower_map_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_map_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_msg_py(mower_map
  "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)

### Generating Services
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/open_mower_ros/src/mower_map/msg/MapArea.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)
_generate_srv_py(mower_map
  "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
)

### Generating Module File
_generate_module_py(mower_map
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mower_map_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mower_map_generate_messages mower_map_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapArea.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/msg/MapAreas.msg" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AddMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/AppendMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ConvertToNavigationAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/DeleteMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/GetMowingAreaSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetDockingPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/SetNavPointSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_map/srv/ClearMapSrv.srv" NAME_WE)
add_dependencies(mower_map_generate_messages_py _mower_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_map_genpy)
add_dependencies(mower_map_genpy mower_map_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_map_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_map
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mower_map_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mower_map_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_map
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mower_map_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mower_map_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_map
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mower_map_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mower_map_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_map
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mower_map_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mower_map_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map)
  install(CODE "execute_process(COMMAND \"/root/miniforge3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_map
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mower_map_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mower_map_generate_messages_py geometry_msgs_generate_messages_py)
endif()
