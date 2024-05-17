#include "driver.h"
#include "mower_driver/SetDuty.h"
#include <unistd.h>

driver::Driver::Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh) {
    // 初始化服务客户端
    startClient     = private_nh.serviceClient<std_srvs::Empty>("/motor/start");
    stopClient      = private_nh.serviceClient<std_srvs::Empty>("/motor/stop");
    speedAddClient  = private_nh.serviceClient<std_srvs::Empty>("/motor/speed_add");
    speedSubClient  = private_nh.serviceClient<std_srvs::Empty>("/motor/speed_sub");
    turnLeftClient  = private_nh.serviceClient<std_srvs::Empty>("/motor/turn_left");
    turnRightClient = private_nh.serviceClient<std_srvs::Empty>("/motor/turn_right");
    // statusClient    = private_nh.serviceClient<xesc_msgs::XescStateStamped>("/motor/get_status");

    std_srvs::Empty emptySrv;
    startClient.call(emptySrv);

}

driver::Driver::~Driver() {
    // 析构函数中不需要特别操作
}

void driver::Driver::setDutyCycle(float speed) {
    // 将speed乘以1000
    speed *= 1000;

    // 根据speed的正负，调用增加或减少速度的服务
    int steps = static_cast<int>(speed / 100);
    if (steps < 0) {
        steps = -steps;
    }
    if (steps > 5) { 
        steps = 5;
    }

    std_srvs::Empty emptySrv;

    stopClient.call(emptySrv);
    for (int i = 0; i < steps; ++i) {
        if (speed >= 0) {
            speedAddClient.call(emptySrv);
        } else {
            speedSubClient.call(emptySrv);
        }
    }
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

// void driver::Driver::getStatus(xesc_msgs::XescStateStamped& status) {
    // 模拟服务调用，这里直接返回null，实际应用中应根据服务响应填充status
    // status = xesc_msgs::XescStateStamped();
    // if (statusClient.call(status)) {
    //     ROS_INFO("Motor status service called successfully.");
    // } else {
    //     ROS_ERROR("Failed to call motor status service.");
    // }
// }

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
    interface->turnLeft();
    sleep(2); 
    interface->turnRight();
    sleep(2); 
    interface->stop();

    delete interface;

}