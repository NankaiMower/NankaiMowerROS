#include "driver.h"
#include "mower_driver/SetDuty.h"
#include <unistd.h>

driver::Driver::Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh) {
    // 初始化服务客户端
    startClient     = nh.serviceClient<std_srvs::Empty>("/motor/start");
    speedAddClient  = nh.serviceClient<std_srvs::Empty>("/motor/speed_add");
    speedSubClient  = nh.serviceClient<std_srvs::Empty>("/motor/speed_sub");
    stopClient      = nh.serviceClient<std_srvs::Empty>("/motor/stop");
    // statusClient    = nh.serviceClient<xesc_msgs::XescStateStamped>("/motor/get_status");

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

    // for (int i = 0; i < steps; ++i) {
    //     std_srvs::SetFloat setFloatSrv;
    //     setFloatSrv.request.value = (speed > 0) ? 100 : -100;
    //     if ((speed > 0 && speedAddClient.call(setFloatSrv)) ||
    //         (speed < 0 && speedSubClient.call(setFloatSrv))) {
    //         ROS_INFO("Motor speed add/sub service called successfully.");
    //     } else {
    //         ROS_ERROR("Failed to call motor speed add/sub service.");
    //     }
    // }

    // std_srvs::Empty emptySrv;
    // stopClient.call(emptySrv);

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

    
    sleep(5); // 暂停1秒

    driver::Driver *interface;
    interface = new driver::Driver(n, rightParamNh);

    interface->setDutyCycle(0.1);
    sleep(3); // 暂停1秒
    interface->setDutyCycle(0.2);
    sleep(3); // 暂停1秒
    interface->setDutyCycle(-0.3);
    sleep(3); // 暂停1秒
    interface->stop();

}