#include <ros/ros.h>

#include "driver.h"
#include <unistd.h>

ros::NodeHandle n;
ros::NodeHandle paramNh("~");
ros::NodeHandle rightParamNh("~/right_xesc");

driver::Driver *right_interface;

int main(int argc, char *argv[]) {

    ros::init(argc, argv, "mower");

    right_interface = new driver::Driver(n, rightParamNh);

    right_interface->setDutyCycle(0.1);
    sleep(2); 
    right_interface->setDutyCycle(0.2);
    sleep(2); 
    right_interface->setDutyCycle(-0.3);
    sleep(2); 
    right_interface->stop();

    delete right_interface;

}


