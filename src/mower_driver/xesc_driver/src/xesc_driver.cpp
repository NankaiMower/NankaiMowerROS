#include "xesc_driver/xesc_driver.h"
#include "mower_driver/SetDuty.h"
#include <std_srvs/Empty.h>

driver::Driver::Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh) {
    // 初始化服务客户端
    node_name = private_nh.getNamespace();
    nh.setParam("/private_nh", node_name);

    if (node_name == "/mower_comms/left_driver") {
        startClient     = private_nh.serviceClient<std_srvs::Empty>("/motor/start_motor_left");
        stopClient      = private_nh.serviceClient<std_srvs::Empty>("/motor/stop_motor_left");
        setDutyClient   = private_nh.serviceClient<mower_driver::SetDuty>("/motor/set_duty_left");
    } 
    else if (node_name == "/mower_comms/right_driver") {
        startClient     = private_nh.serviceClient<std_srvs::Empty>("/motor/start_motor_right");
        stopClient      = private_nh.serviceClient<std_srvs::Empty>("/motor/stop_motor_right");
        setDutyClient   = private_nh.serviceClient<mower_driver::SetDuty>("/motor/set_duty_right");
    }
    
    std_srvs::Empty emptySrv;
    startClient.call(emptySrv);

}

driver::Driver::~Driver() {
    // 析构函数中不需要特别操作
}

void driver::Driver::setDutyCycle(float speed) {
    speed = speed * 3000; 
    mower_driver::SetDuty set_duty_srv;
    // ROS_INFO("Current node name is: %s", node_name.c_str());
    // ROS_INFO_STREAM("speed" << speed);
    set_duty_srv.request.duty = speed;
    setDutyClient.call(set_duty_srv);
}

void driver::Driver::stop() {
    std_srvs::Empty emptySrv;
    stopClient.call(emptySrv);
    ROS_INFO("Motor stop service called successfully.");
}