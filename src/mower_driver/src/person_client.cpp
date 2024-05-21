#include <ros/ros.h>
#include "mower_driver/Person.h"

int main(int argc, char** argv) {
   ros::init(argc, argv, "person_client");

   ros::NodeHandle node;

   //发现/show_person服务后，创建client, 连接/show_person的服务
   ros::service::waitForService("/show_person");
   ros::ServiceClient person_client = node.serviceClient<mower_driver::Person>("/show_person");

   //初始化请求数据
   mower_driver::Person srv;
   srv.request.name = "Tom";
   srv.request.age = 20;
   srv.request.sex = mower_driver::Person::Request::male;

   ROS_INFO("Call service to show person [name:%s, age:%d, sex:%d]",
         srv.request.name.c_str(), srv.request.age, srv.request.sex);

   person_client.call(srv);

   ROS_INFO("Show person result: %s", srv.response.result.c_str());

   return 0;
}
