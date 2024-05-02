# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ftc_local_planner: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iftc_local_planner:/opt/open_mower_ros/src/lib/ftc_local_planner/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ftc_local_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" NAME_WE)
add_custom_target(_ftc_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ftc_local_planner" "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" ""
)

get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" NAME_WE)
add_custom_target(_ftc_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ftc_local_planner" "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ftc_local_planner
)

### Generating Services
_generate_srv_cpp(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ftc_local_planner
)

### Generating Module File
_generate_module_cpp(ftc_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ftc_local_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ftc_local_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ftc_local_planner_generate_messages ftc_local_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_cpp _ftc_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_cpp _ftc_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ftc_local_planner_gencpp)
add_dependencies(ftc_local_planner_gencpp ftc_local_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ftc_local_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ftc_local_planner
)

### Generating Services
_generate_srv_eus(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ftc_local_planner
)

### Generating Module File
_generate_module_eus(ftc_local_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ftc_local_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ftc_local_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ftc_local_planner_generate_messages ftc_local_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_eus _ftc_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_eus _ftc_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ftc_local_planner_geneus)
add_dependencies(ftc_local_planner_geneus ftc_local_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ftc_local_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ftc_local_planner
)

### Generating Services
_generate_srv_lisp(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ftc_local_planner
)

### Generating Module File
_generate_module_lisp(ftc_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ftc_local_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ftc_local_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ftc_local_planner_generate_messages ftc_local_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_lisp _ftc_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_lisp _ftc_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ftc_local_planner_genlisp)
add_dependencies(ftc_local_planner_genlisp ftc_local_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ftc_local_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ftc_local_planner
)

### Generating Services
_generate_srv_nodejs(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ftc_local_planner
)

### Generating Module File
_generate_module_nodejs(ftc_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ftc_local_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ftc_local_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ftc_local_planner_generate_messages ftc_local_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_nodejs _ftc_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_nodejs _ftc_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ftc_local_planner_gennodejs)
add_dependencies(ftc_local_planner_gennodejs ftc_local_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ftc_local_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ftc_local_planner
)

### Generating Services
_generate_srv_py(ftc_local_planner
  "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ftc_local_planner
)

### Generating Module File
_generate_module_py(ftc_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ftc_local_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ftc_local_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ftc_local_planner_generate_messages ftc_local_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/msg/PID.msg" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_py _ftc_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/opt/open_mower_ros/src/lib/ftc_local_planner/srv/PlannerGetProgress.srv" NAME_WE)
add_dependencies(ftc_local_planner_generate_messages_py _ftc_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ftc_local_planner_genpy)
add_dependencies(ftc_local_planner_genpy ftc_local_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ftc_local_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ftc_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ftc_local_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ftc_local_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ftc_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ftc_local_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ftc_local_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ftc_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ftc_local_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ftc_local_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ftc_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ftc_local_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ftc_local_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ftc_local_planner)
  install(CODE "execute_process(COMMAND \"/root/miniforge3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ftc_local_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ftc_local_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ftc_local_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
