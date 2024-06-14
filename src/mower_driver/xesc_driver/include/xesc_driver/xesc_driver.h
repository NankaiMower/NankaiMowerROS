#include <ros/ros.h>

namespace driver {
    class Driver {
    public:
        Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh);
        ~Driver();

        void setDutyCycle(float speed);
        void stop();
        // void getStatus(xesc_msgs::XescStateStamped& status);

    private:
        ros::NodeHandle nh;
        ros::NodeHandle private_nh;
        std::string node_name;
        ros::ServiceClient startClient;
        ros::ServiceClient stopClient;
        ros::ServiceClient setDutyClient;
    };
}