#include <ros/ros.h>

#include "std_msgs/Float32.h"
#include <xesc_msgs/XescStateStamped.h>
#include "xesc_driver/xesc_driver.h"

ros::NodeHandle *nh;
ros::NodeHandle *private_nh;
xesc_driver::XescDriver *xesc_driver_ptr;

void velReceived(const std_msgs::Float32::ConstPtr &msg) {
    if(!xesc_driver_ptr)
        return;

    xesc_driver_ptr->setDutyCycle(msg->data);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "xesc_driver_node");

    nh = new ros::NodeHandle();
    private_nh = new ros::NodeHandle("~/a_driver");

    ros::Subscriber duty_cycle_sub = private_nh->subscribe("duty_cycle", 0, velReceived, ros::TransportHints().tcpNoDelay(true));

    // create xesc state (telemetry) publisher
    ros::Publisher state_pub = nh->advertise<xesc_msgs::XescStateStamped>("sensors/core", 1);

    xesc_driver_ptr = new xesc_driver::XescDriver(*nh,*private_nh);

    // ros::AsyncSpinner spinner(1);
    // ros::AsyncSpinner 是一个异步事件处理器，
    // 它允许ROS节点在等待回调函数执行时继续执行其他任务。
    // 当你创建一个 ros::AsyncSpinner 实例时，
    // 可以指定它创建的线程数量。
    // ros::spin 是ROS中的传统事件处理器，
    // 它会阻塞调用它的线程，直到节点被明确地关闭。
    // 这意味着，一旦调用了 ros::spin()，当前线程将一直
    // 等待回调函数的触发，不会去做其他任何事情
    // spinner.start();
    xesc_msgs::XescStateStamped state_msg;
    ros::Rate loop_rate(10);  // 设置循环频率为10Hz
    while (ros::ok()) {
        xesc_driver_ptr->getStatus(state_msg);
        state_pub.publish(state_msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    ROS_INFO_STREAM("stopping XESC driver node");
    xesc_driver_ptr->stop();
    // spinner.stop();

    delete xesc_driver_ptr;

    return 0;
}

/*
[发布]
电机及其驱动相关信息
rostopic echo sensors/core

[订阅]
接收一个电机占空比数值，将电机设置为相应的速度
rostopic echo /xesc_driver_node/a_driver/duty_cycle

[测试]
rostopic pub -r 500 /xesc_driver_node/a_driver/duty_cycle std_msgs/Float32 0.1
rostopic pub -r 500 /xesc_driver_node/a_driver/duty_cycle std_msgs/Float32 -- -0.2
*/