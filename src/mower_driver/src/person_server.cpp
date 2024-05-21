#include <ros/ros.h>
#include "mower_driver/Person.h"

bool personCallback(mower_driver::Person::Request &req,
                    mower_driver::Person::Response &res) {
   ROS_INFO("Person: name:%s age:%d sex:%d", req.name.c_str(), req.age, req.sex);
   res.result = "OK";
   return true;
}

int main(int argc, char** argv) {
   ros::init(argc, argv, "person_server");

   ros::NodeHandle n;

   ros::ServiceServer person_service = n.advertiseService("/show_person", personCallback);

   ROS_INFO("Ready to show person information");
   ros::spin();

   return 0;
}
