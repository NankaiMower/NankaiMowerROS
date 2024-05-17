#include <ros/ros.h>
#include <std_srvs/Empty.h>
// #include <xesc_msgs/XescStateStamped.h>

namespace driver {
    class Driver {
    public:
        Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh);
        ~Driver();

        void setDutyCycle(float speed);
        void turnLeft();
        void turnRight();
        void stop();
        // void getStatus(xesc_msgs::XescStateStamped& status);

    private:
        ros::NodeHandle nh;
        ros::NodeHandle private_nh;
        ros::ServiceClient startClient;
        ros::ServiceClient stopClient;
        ros::ServiceClient speedAddClient;
        ros::ServiceClient speedSubClient;
        ros::ServiceClient turnLeftClient;
        ros::ServiceClient turnRightClient;
        // ros::ServiceClient statusClient;
    };
}