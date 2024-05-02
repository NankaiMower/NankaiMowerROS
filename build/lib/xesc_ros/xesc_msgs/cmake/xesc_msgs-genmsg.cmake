# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xesc_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ixesc_msgs:/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xesc_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" NAME_WE)
add_custom_target(_xesc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xesc_msgs" "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" NAME_WE)
add_custom_target(_xesc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xesc_msgs" "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" "std_msgs/Header:xesc_msgs/XescState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xesc_msgs
)
_generate_msg_cpp(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xesc_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(xesc_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xesc_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xesc_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xesc_msgs_generate_messages xesc_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_cpp _xesc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_cpp _xesc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xesc_msgs_gencpp)
add_dependencies(xesc_msgs_gencpp xesc_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xesc_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xesc_msgs
)
_generate_msg_eus(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xesc_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(xesc_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xesc_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xesc_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xesc_msgs_generate_messages xesc_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_eus _xesc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_eus _xesc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xesc_msgs_geneus)
add_dependencies(xesc_msgs_geneus xesc_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xesc_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xesc_msgs
)
_generate_msg_lisp(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xesc_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(xesc_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xesc_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xesc_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xesc_msgs_generate_messages xesc_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_lisp _xesc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_lisp _xesc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xesc_msgs_genlisp)
add_dependencies(xesc_msgs_genlisp xesc_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xesc_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xesc_msgs
)
_generate_msg_nodejs(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xesc_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(xesc_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xesc_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xesc_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xesc_msgs_generate_messages xesc_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_nodejs _xesc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_nodejs _xesc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xesc_msgs_gennodejs)
add_dependencies(xesc_msgs_gennodejs xesc_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xesc_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xesc_msgs
)
_generate_msg_py(xesc_msgs
  "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xesc_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(xesc_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xesc_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xesc_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xesc_msgs_generate_messages xesc_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescState.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_py _xesc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/xesc_ros/xesc_msgs/msg/XescStateStamped.msg" NAME_WE)
add_dependencies(xesc_msgs_generate_messages_py _xesc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xesc_msgs_genpy)
add_dependencies(xesc_msgs_genpy xesc_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xesc_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xesc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xesc_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xesc_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xesc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xesc_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(xesc_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xesc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xesc_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xesc_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xesc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xesc_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(xesc_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xesc_msgs)
  install(CODE "execute_process(COMMAND \"/root/miniforge3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xesc_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xesc_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xesc_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
