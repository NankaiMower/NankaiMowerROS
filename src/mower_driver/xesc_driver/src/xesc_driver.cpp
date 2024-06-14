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
    if (node_name == "/mower_comms/left_driver") {
        speed = -speed;
    }
    ROS_INFO("Current node name is: %s", node_name.c_str());
    ROS_INFO_STREAM("speed" << speed);
    set_duty_srv.request.duty = speed;
    setDutyClient.call(set_duty_srv);
}

// void driver::Driver::getStatus(xesc_msgs::XescStateStamped &state_msg) {
//     // 因为python获取的信息和c++不能直接用，但是通信格式都是XescStateStamped
//     // 转发一下结果到这里即可
//     // 在这里订阅和赋值信息即可
//     // TODO:
//     state_msg.header.stamp            = ros::Time::now();
//     // state_msg.state.connection_state  = vesc_status.connection_state;
//     // state_msg.state.fw_major          = vesc_status.fw_version_major;
//     // state_msg.state.fw_minor          = vesc_status.fw_version_minor;
//     state_msg.state.voltage_input     = vesc_status.voltage_input;
//     state_msg.state.temperature_pcb   = vesc_status.temperature_pcb;
//     state_msg.state.temperature_motor = vesc_status.temperature_motor;
//     state_msg.state.current_input     = vesc_status.current_input;
//     state_msg.state.duty_cycle        = vesc_status.duty_cycle;
//     state_msg.state.tacho             = vesc_status.tacho;
//     state_msg.state.fault_code        = vesc_status.fault_code;
//     state_msg.state.tacho_absolute    = vesc_status.tacho_absolute;
//     state_msg.state.direction         = vesc_status.direction;
// }

void driver::Driver::stop() {
    std_srvs::Empty emptySrv;
    stopClient.call(emptySrv);
    ROS_INFO("Motor stop service called successfully.");
}