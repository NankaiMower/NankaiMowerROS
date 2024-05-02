# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mower_msgs: 4 messages, 4 services")

set(MSG_I_FLAGS "-Imower_msgs:/opt/open_mower_ros/src/mower_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mower_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" "mower_msgs/ESCStatus"
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" NAME_WE)
add_custom_target(_mower_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mower_msgs" "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)
_generate_msg_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)
_generate_msg_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)
_generate_msg_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)

### Generating Services
_generate_srv_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)
_generate_srv_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)
_generate_srv_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)
_generate_srv_cpp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
)

### Generating Module File
_generate_module_cpp(mower_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mower_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mower_msgs_generate_messages mower_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_cpp _mower_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_msgs_gencpp)
add_dependencies(mower_msgs_gencpp mower_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)
_generate_msg_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)
_generate_msg_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)
_generate_msg_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)

### Generating Services
_generate_srv_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)
_generate_srv_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)
_generate_srv_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)
_generate_srv_eus(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
)

### Generating Module File
_generate_module_eus(mower_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mower_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mower_msgs_generate_messages mower_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_eus _mower_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_msgs_geneus)
add_dependencies(mower_msgs_geneus mower_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)
_generate_msg_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)
_generate_msg_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)
_generate_msg_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)

### Generating Services
_generate_srv_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)
_generate_srv_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)
_generate_srv_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)
_generate_srv_lisp(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
)

### Generating Module File
_generate_module_lisp(mower_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mower_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mower_msgs_generate_messages mower_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_lisp _mower_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_msgs_genlisp)
add_dependencies(mower_msgs_genlisp mower_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)
_generate_msg_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)
_generate_msg_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)
_generate_msg_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)

### Generating Services
_generate_srv_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)
_generate_srv_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)
_generate_srv_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)
_generate_srv_nodejs(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
)

### Generating Module File
_generate_module_nodejs(mower_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mower_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mower_msgs_generate_messages mower_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_nodejs _mower_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_msgs_gennodejs)
add_dependencies(mower_msgs_gennodejs mower_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)
_generate_msg_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)
_generate_msg_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)
_generate_msg_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)

### Generating Services
_generate_srv_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)
_generate_srv_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)
_generate_srv_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)
_generate_srv_py(mower_msgs
  "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
)

### Generating Module File
_generate_module_py(mower_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mower_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mower_msgs_generate_messages mower_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ImuRaw.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/ESCStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/msg/HighLevelStatus.msg" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/EmergencyStopSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/GPSControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/MowerControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/mower_msgs/srv/HighLevelControlSrv.srv" NAME_WE)
add_dependencies(mower_msgs_generate_messages_py _mower_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mower_msgs_genpy)
add_dependencies(mower_msgs_genpy mower_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mower_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mower_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mower_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mower_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mower_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mower_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mower_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mower_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mower_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs)
  install(CODE "execute_process(COMMAND \"/root/miniforge3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mower_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mower_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
