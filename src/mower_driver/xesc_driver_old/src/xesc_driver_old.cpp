#include "xesc_driver_old/xesc_driver_old.h"

xesc_driver::XescDriver::XescDriver(ros::NodeHandle &nh, ros::NodeHandle &private_nh) {
    ROS_INFO_STREAM("Starting xesc driver");

    // Check the xesc_type field and create the appropriate driver for it
    std::string xesc_type;
    if(!private_nh.getParam("xesc_type", xesc_type)) {
        ROS_ERROR_STREAM("Error: xesc_type not set.");
        ros::shutdown();
        xesc_driver = nullptr;
        return;
    }

    if(xesc_type == "xesc_mini") {
        xesc_driver = new vesc_driver::VescDriver(nh, private_nh);
    } else {
        ROS_ERROR_STREAM("Error: xesc_type invalid. Type was: " << xesc_type);
        ros::shutdown();
        xesc_driver = nullptr;
        return;
    }
}

void xesc_driver::XescDriver::getStatus(xesc_msgs::XescStateStamped &state_msg) {
    if (!xesc_driver)
        return;
    xesc_driver->getStatus(state_msg);
}

void xesc_driver::XescDriver::getStatusBlocking(xesc_msgs::XescStateStamped &state_msg) {
    if (!xesc_driver)
        return;
    xesc_driver->getStatusBlocking(state_msg);
}

void xesc_driver::XescDriver::stop() {
    if (!xesc_driver)
        return;
    xesc_driver->stop();
}

void xesc_driver::XescDriver::setDutyCycle(float duty_cycle) {
    if (!xesc_driver)
        return;
    xesc_driver->setDutyCycle(duty_cycle);
}

xesc_driver::XescDriver::~XescDriver() {
    if (xesc_driver) {
        delete xesc_driver;
        xesc_driver = nullptr;
    }
}
