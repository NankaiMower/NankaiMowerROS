cmake_minimum_required(VERSION 2.8.3)
project(xesc_driver_old)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  pluginlib
  roscpp
  std_msgs
  serial
        xesc_msgs
        vesc_driver
        xesc_interface
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES xesc_driver_old
  CATKIN_DEPENDS pluginlib roscpp std_msgs xesc_msgs serial vesc_driver
)

###########
## Build ##
###########

include_directories(
  include
  ${Boost_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)

# driver libraries
add_library(xesc_driver_old
        src/xesc_driver_old.cpp
        include/xesc_driver_old/xesc_driver_old.h)

add_dependencies(xesc_driver_old ${catkin_EXPORTED_TARGETS})

# node executable
add_executable(xesc_driver_old_node src/xesc_driver_old_node.cpp)
add_dependencies(xesc_driver_old_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(xesc_driver_old_node
        xesc_driver_old
        ${catkin_LIBRARIES}
        )

#############
## Install ##
#############

install(TARGETS xesc_driver_old
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

