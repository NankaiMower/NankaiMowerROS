#include <ros/ros.h>

#include "mower_driver/driver.h"
#include <unistd.h>

int main(int argc, char *argv[]) {

    ros::init(argc, argv, "mower");

    ros::NodeHandle n;
    ros::NodeHandle paramNh("~");
    ros::NodeHandle rightParamNh("~/right_driver");

    sleep(6);

    driver::Driver *interface;
    interface = new driver::Driver(n, rightParamNh);

    interface->setDutyCycle(0.1);
    sleep(2); 
    interface->setDutyCycle(0.2);
    sleep(2); 
    interface->setDutyCycle(-0.3);
    sleep(2); 
    // interface->turnLeft();
    // sleep(2); 
    // interface->turnRight();
    // sleep(2); 
    interface->stop();

    delete interface;

}


