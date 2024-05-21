#include <ros/ros.h>

#include "xesc_driver/xesc_driver.h"
#include <unistd.h>

ros::NodeHandle *n;
ros::NodeHandle *paramNh;
ros::NodeHandle *rightParamNh;

driver::Driver *right_interface;

int main(int argc, char *argv[]) {

    ros::init(argc, argv, "mower");

    n = new ros::NodeHandle();
    paramNh = new ros::NodeHandle("~");
    rightParamNh = new ros::NodeHandle("~/right_driver");

    right_interface = new driver::Driver(*n, *rightParamNh);

    // right_interface->setDutyCycle(0.1);
    sleep(2); 
    // right_interface->setDutyCycle(0.2);
    // sleep(2); 
    // right_interface->setDutyCycle(-0.3);
    // sleep(2); 
    // right_interface->stop();

    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->setDutyCycle(0.2);
    sleep(1); 
    right_interface->stop();
    sleep(1); 
    delete right_interface;

}


