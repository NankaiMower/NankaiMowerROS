#include <ros/ros.h>

#include "xesc_driver/xesc_driver.h"
#include <unistd.h>

ros::NodeHandle *n;
ros::NodeHandle *paramNh;
ros::NodeHandle *leftParamNh;
ros::NodeHandle *rightParamNh;

driver::Driver *left_interface;
driver::Driver *right_interface;

int main(int argc, char *argv[]) {

    ros::init(argc, argv, "mower_comms");

    n = new ros::NodeHandle();
    paramNh = new ros::NodeHandle("~");
    leftParamNh = new ros::NodeHandle("~/left_driver");
    rightParamNh = new ros::NodeHandle("~/right_driver");

    left_interface = new driver::Driver(*n, *leftParamNh);
    right_interface = new driver::Driver(*n, *rightParamNh);
    sleep(3); 
    left_interface->setDutyCycle(0.2);
    right_interface->setDutyCycle(0.2);
    sleep(5); 
    // left_interface->setDutyCycle(-0.2);
    // right_interface->setDutyCycle(-0.2);
    sleep(3); 
    left_interface->stop();
    right_interface->stop();
    sleep(2); 
    delete left_interface;
    delete right_interface;
}

// rosrun mower_driver mower_driver_command.py
// rosrun xesc_driver xesc_driver_node

