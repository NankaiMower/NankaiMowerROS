#include "xesc_driver/xesc_driver.h"
#include "mower_driver/SetDuty.h"
#include <std_srvs/Empty.h>

driver::Driver::Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh) {
    // 初始化服务客户端
    startClient     = private_nh.serviceClient<std_srvs::Empty>("/motor/start");
    stopClient      = private_nh.serviceClient<std_srvs::Empty>("/motor/stop");
    speedAddClient  = private_nh.serviceClient<std_srvs::Empty>("/motor/speed_add");
    speedSubClient  = private_nh.serviceClient<std_srvs::Empty>("/motor/speed_sub");
    turnLeftClient  = private_nh.serviceClient<std_srvs::Empty>("/motor/turn_left");
    turnRightClient = private_nh.serviceClient<std_srvs::Empty>("/motor/turn_right");
    setDutyClient   = private_nh.serviceClient<mower_driver::SetDuty>("/motor/set_duty");
    // statusClient    = private_nh.serviceClient<xesc_msgs::XescStateStamped>("/motor/get_status");

    std_srvs::Empty emptySrv;
    startClient.call(emptySrv);

}

driver::Driver::~Driver() {
    // 析构函数中不需要特别操作
}

void driver::Driver::setDutyCycle(float speed) {
    speed = speed * 1000;
    if (speed > 500) { 
        speed = 500;
    }
    if (speed < -500) { 
        speed = -500;
    }

    mower_driver::SetDuty set_duty_srv;
    set_duty_srv.request.duty = speed;
    setDutyClient.call(set_duty_srv);
}

void driver::Driver::turnLeft() {
    std_srvs::Empty emptySrv;
    turnLeftClient.call(emptySrv);
}
void driver::Driver::turnRight() {
    std_srvs::Empty emptySrv;
    turnRightClient.call(emptySrv);
}

void driver::Driver::stop() {
    std_srvs::Empty emptySrv;
    if (stopClient.call(emptySrv)) {
        ROS_INFO("Motor stop service called successfully.");
    } else {
        ROS_ERROR("Failed to call motor stop service.");
    }
}