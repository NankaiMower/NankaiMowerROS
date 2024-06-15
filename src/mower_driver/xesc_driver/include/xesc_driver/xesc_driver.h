#include <ros/ros.h>
#include "xesc_msgs/XescStateStamped.h"

namespace driver {
    class Driver {
    public:
        Driver(ros::NodeHandle& nh, ros::NodeHandle& private_nh);
        ~Driver();

        void setDutyCycle(float speed);
        void stop();

    private:
        ros::NodeHandle nh;
        ros::NodeHandle private_nh;
        std::string node_name;
        ros::ServiceClient startClient;
        ros::ServiceClient stopClient;
        ros::ServiceClient setDutyClient;
    };
}