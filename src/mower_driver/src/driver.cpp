#include "driver.h"
#include "mower_driver/SetDuty.h"

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

// void driver::Driver::setDutyCycle(int speed) {
//     // 根据speed的正负，调用增加或减少速度的服务
//     int steps = speed / 100;
//     if (steps < 0) {
//         steps = -steps;
//     }
//     if (steps > 5) { 
//         steps = 5;
//     }

//     std_srvs::Empty emptySrv;

//     stopClient.call(emptySrv);
//     for (int i = 0; i < steps; ++i) {
//         if (speed >= 0) {
//             speedAddClient.call(emptySrv);
//         } else {
//             speedSubClient.call(emptySrv);
//         }
//     }
// }

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

// void driver::Driver::getStatus(xesc_msgs::XescStateStamped& status) {
    // 模拟服务调用，这里直接返回null，实际应用中应根据服务响应填充status
    // status = xesc_msgs::XescStateStamped();
    // if (statusClient.call(status)) {
    //     ROS_INFO("Motor status service called successfully.");
    // } else {
    //     ROS_ERROR("Failed to call motor status service.");
    // }
// }