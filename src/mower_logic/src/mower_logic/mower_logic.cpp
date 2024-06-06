// Created by Clemens Elflein on 2/21/22.
// Copyright (c) 2022 Clemens Elflein. All rights reserved.
//
// This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
//
// Feel free to use the design in your private/educational projects, but don't try to sell the design or products based on it without getting my consent first.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
//

#include "ros/ros.h"
#include "slic3r_coverage_planner/PlanPath.h"
#include "mower_map/GetMowingAreaSrv.h"
#include "mower_map/GetDockingPointSrv.h"
#include "mower_map/SetDockingPointSrv.h"
#include "mower_map/ClearNavPointSrv.h"
#include "mower_map/SetNavPointSrv.h"
#include <actionlib/client/simple_action_client.h>
#include <tf2/LinearMath/Transform.h>
#include "mbf_msgs/ExePathAction.h"
#include "mbf_msgs/MoveBaseAction.h"
#include "nav_msgs/Odometry.h"
#include "nav_msgs/Path.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "mower_msgs/Status.h"
#include "actionlib/client/simple_client_goal_state.h"
#include "mower_msgs/MowerControlSrv.h"
#include "mower_msgs/EmergencyStopSrv.h"
#include "ftc_local_planner/PlannerGetProgress.h"
#include <dynamic_reconfigure/server.h>
#include "mower_logic/MowerLogicConfig.h"
#include "behaviors/Behavior.h"
#include "behaviors/IdleBehavior.h"
#include "behaviors/AreaRecordingBehavior.h"
#include "mower_msgs/HighLevelControlSrv.h"
#include "std_msgs/String.h"
#include "mower_msgs/HighLevelStatus.h"
#include "mower_map/ClearMapSrv.h"
#include "xbot_msgs/AbsolutePose.h"
#include "xbot_positioning/GPSControlSrv.h"
#include "xbot_positioning/SetPoseSrv.h"
#include "xbot_msgs/RegisterActionsSrv.h"

ros::ServiceClient pathClient, mapClient, dockingPointClient, gpsClient, mowClient, emergencyClient, pathProgressClient, setNavPointClient, clearNavPointClient, clearMapClient, positioningClient, actionRegistrationClient;

ros::NodeHandle *n;
ros::NodeHandle *paramNh;

dynamic_reconfigure::Server<mower_logic::MowerLogicConfig> *reconfigServer;
actionlib::SimpleActionClient<mbf_msgs::MoveBaseAction> *mbfClient;
actionlib::SimpleActionClient<mbf_msgs::ExePathAction> *mbfClientExePath;

ros::Publisher cmd_vel_pub, path_pub, high_level_state_publisher;

// 保留上一状态

mower_logic::MowerLogicConfig last_config;
geometry_msgs::Twist lastJoyVel;
xbot_msgs::AbsolutePose last_pose;
mower_msgs::Status last_status;
mower_msgs::HighLevelStatus high_level_status;

ros::Time pose_time(0.0);
ros::Time status_time(0.0);
ros::Time last_good_gps(0.0);

bool last_mowerEnabled = false;

Behavior *currentBehavior = &IdleBehavior::INSTANCE;

// TODO: 定义的函数顺序有点乱，需要整理
void registerActions(std::string prefix, const std::vector<xbot_msgs::ActionInfo> &actions);
void reconfigureCB(mower_logic::MowerLogicConfig &c, uint32_t level);

void poseReceived(const xbot_msgs::AbsolutePose::ConstPtr &msg);
void statusReceived(const mower_msgs::Status::ConstPtr &msg);
void actionReceived(const std_msgs::String::ConstPtr &action);
void joyVelReceived(const geometry_msgs::Twist::ConstPtr &joy_vel);

bool isGpsGood();
bool setGPS(bool enabled);

void stopBlade();
void stopMoving();
void setMowerEnabled(bool enabled);
void setEmergencyMode(bool emergency);
void setRobotPose(geometry_msgs::Pose &pose);
void abortExecution();

void updateUI(const ros::TimerEvent &timer_event);
void checkSafety(const ros::TimerEvent &timer_event);

bool highLevelCommand(mower_msgs::HighLevelControlSrvRequest &req, mower_msgs::HighLevelControlSrvResponse &res);

// 注册行为
void registerActions(std::string prefix, const std::vector<xbot_msgs::ActionInfo> &actions) {
    xbot_msgs::RegisterActionsSrv srv;
    srv.request.node_prefix = prefix;
    srv.request.actions = actions;

    // 尝试注册多次
    ros::Rate retry_delay(1);
    for(int i = 0; i < 10; i++) {
        if(actionRegistrationClient.call(srv)) {
            ROS_INFO_STREAM("successfully registered actions for " << prefix);
            break;
        }
        ROS_ERROR_STREAM("Error registering actions for " << prefix << ". Retrying.");
        retry_delay.sleep();
    }
}

// 启用位姿信息
void setRobotPose(geometry_msgs::Pose &pose) {
    xbot_positioning::SetPoseSrv pose_srv;
    pose_srv.request.robot_pose = pose;

    ros::Rate retry_delay(1);
    bool success = false;
    for(int i = 0; i < 10; i++) {
        if(positioningClient.call(pose_srv)) {
            ROS_INFO_STREAM("successfully set pose to " << pose);
            success = true;
            break;
        }
        ROS_ERROR_STREAM("Error setting robot pose to " << pose << ". Retrying.");
        retry_delay.sleep();
    }

    if(!success) {
        ROS_ERROR_STREAM("Error setting robot pose. Going to emergency. THIS SHOULD NEVER HAPPEN");
        setEmergencyMode(true);
    }
}

// 坐标信息接收缓存
void poseReceived(const xbot_msgs::AbsolutePose::ConstPtr &msg) {
    last_pose = *msg;
    // ROS_INFO("om_mower_logic: pose received with accuracy          %f", last_pose.position_accuracy);
    // ROS_INFO("om_mower_logic: pose received with orientation_valid %f", last_pose.orientation_valid);
    pose_time = ros::Time::now();
}

// 状态信息接收缓存
void statusReceived(const mower_msgs::Status::ConstPtr &msg) {
    last_status = *msg;
    // ROS_INFO("om_mower_logic: statusReceived");
    status_time = ros::Time::now();
}

// 直接终止当前状态
void abortExecution() {
    if (currentBehavior != nullptr) {
        currentBehavior->abort();
    }
}

// 启用GPS
bool setGPS(bool enabled) {
    xbot_positioning::GPSControlSrv gps_srv;
    gps_srv.request.gps_enabled = enabled;

    ros::Rate retry_delay(1);
    bool success = false;
    for(int i = 0; i < 10; i++) {
        if(gpsClient.call(gps_srv)) {
            ROS_INFO_STREAM("successfully set GPS to " << enabled);
            success = true;
            break;
        }
        ROS_ERROR_STREAM("Error setting GPS to " << enabled << ". Retrying.");
        retry_delay.sleep();
    }

    if(!success) {
        ROS_ERROR_STREAM("Error setting GPS. Going to emergency. THIS SHOULD NEVER HAPPEN");
        setEmergencyMode(true);
    }

    return success;
}

// 设置当前的割草状态
// TODO: get feedback about spinup and delay if needed
void setMowerEnabled(bool enabled) {
    // FIXME: 如果和配置的状态不一样说明配置有问题
    if (!last_config.enable_mower && enabled) {
        ROS_INFO_STREAM("om_mower_logic: setMowerEnabled() - Mower should be enabled but is hard-disabled in the config.");
        enabled = false;
    }
    
    // 如果之前状态没有割草现在要割草，或者之前在割草现在不割草
    // ROS_INFO_STREAM("last_mowerEnabled  " << last_mowerEnabled << "  enabled  " << enabled);

    if (last_mowerEnabled != enabled)
    {
        mower_msgs::MowerControlSrv mow_srv;
        mow_srv.request.mow_enabled = enabled;
        ros::Time started = ros::Time::now();
        ROS_WARN_STREAM("#### om_mower_logic: setMowerEnabled(" << enabled << ") call");

        ros::Rate retry_delay(1);
        bool success = false;
        for(int i = 0; i < 10; i++) {
            if(mowClient.call(mow_srv)) {
                ROS_INFO_STREAM("successfully set mower enabled to " << enabled);
                success = true;
                break;
            }
            ROS_ERROR_STREAM("Error setting mower enabled to " << enabled << ". Retrying.");
            retry_delay.sleep();
        }

        if(!success) {
            ROS_ERROR_STREAM("Error setting mower enabled. THIS SHOULD NEVER HAPPEN");
        }

        ROS_WARN_STREAM("#### om_mower_logic: setMowerEnabled(" << enabled << ") call completed within " << (ros::Time::now()-started).toSec() << "s");
        last_mowerEnabled = enabled;
    }

    // TODO: Spinup feedback & delay
    // if (enabled) {
    //     ROS_INFO_STREAM("enabled mower, waiting for it to speed up");

    //     // TODO timeout and error
    //     ros::Time started = ros::Time::now();
    //     while (true) {
    //         if (status_time > started) {
    //             // we have a current status message, wait for mower to speed up
    //             bool mower_running = (last_status.speed_mow_status & 0b10);
    //             if (mower_running) {
    //                 ROS_INFO_STREAM("mower motor started");
    //                 return true;
    //             }
    //         }
    //         if (ros::Time::now() - started > ros::Duration(25.0)) {
    //             // mower was not able to start
    //             ROS_ERROR_STREAM("error starting mower motor...");
    //             setMowerEnabled(false);
    //             return false;
    //         }
    //     }
    // }
}

// 停止行走电机
// FIXME: 什么时候才该调用
void stopMoving() {
    // ROS_INFO_STREAM("om_mower_logic: stopMoving() - stopping bot movement");
    geometry_msgs::Twist stop;
    stop.angular.z = 0;
    stop.linear.x = 0;
    cmd_vel_pub.publish(stop);
}

// 停止割草电机
void stopBlade() {
    // ROS_INFO_STREAM("om_mower_logic: stopBlade() - stopping blade motor if running");
    if (last_mowerEnabled) {
        setMowerEnabled(false);
    }
    // ROS_INFO_STREAM("om_mower_logic: stopBlade() - finished");
}

// 遇到紧急情况，需要停止割草电机和行走电机
void setEmergencyMode(bool emergency) {
    ROS_ERROR_STREAM("22222");
    stopBlade();
    stopMoving();
    
    mower_msgs::EmergencyStopSrv emergencyStop;
    emergencyStop.request.emergency = emergency;

    ros::Rate retry_delay(1);
    bool success = false;
    for(int i = 0; i < 10; i++) {
        // FIXME: always return true
        if(emergencyClient.call(emergencyStop)) {
            ROS_INFO_STREAM("successfully set emergency enabled to " << emergency);
            success = true;
            break;
        }
        ROS_ERROR_STREAM("Error setting emergency enabled to " << emergency << ". Retrying.");
        retry_delay.sleep();
    }

    if(!success) {
        ROS_ERROR_STREAM("Error setting emergency. THIS SHOULD NEVER HAPPEN");
    }
}

void updateUI(const ros::TimerEvent &timer_event) {

    if(currentBehavior) {
        high_level_status.state_name = currentBehavior->state_name();
        high_level_status.state = (currentBehavior->get_state() & 0b11111) | (currentBehavior->get_sub_state() << mower_msgs::HighLevelStatus::SUBSTATE_SHIFT);
        high_level_status.sub_state_name = currentBehavior->sub_state_name();
    } else {
        high_level_status.state_name = "NULL";
        high_level_status.sub_state_name = "";
        high_level_status.state = mower_msgs::HighLevelStatus::HIGH_LEVEL_STATE_NULL;
    }
    high_level_state_publisher.publish(high_level_status);
}

// TODO: think about the "recent gps flag" since it only looks at the time. E.g. if we were standing still this would still pause even if no GPS updates are needed during standstill.
// 检查GPS返回状态好坏
bool isGpsGood() {
    return 
        last_pose.orientation_valid && 
        last_pose.position_accuracy < last_config.max_position_accuracy && 
        (last_pose.flags & xbot_msgs::AbsolutePose::FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE);
}

// 定期调用
// 只有割草的状态下可能要启动割草电机
// 状态中断时需要停止任何运动
void checkSafety(const ros::TimerEvent &timer_event) {
    setMowerEnabled(currentBehavior != nullptr && currentBehavior->mower_enabled());

    high_level_status.emergency = last_status.emergency;
    high_level_status.is_charging = last_status.v_charge > 10.0;

    // send to idle if emergency and we're not recording
    if(last_status.emergency) {
        if( currentBehavior != &AreaRecordingBehavior::INSTANCE && 
            currentBehavior != &IdleBehavior::INSTANCE
        ) {
            abortExecution();
        } else if(last_status.v_charge > 10.0) {
            // emergency and docked and idle or area recording, 
            // so it's safe to reset the emergency mode, reset it. 
            // It's safe since we won't start moving in this mode.
            setEmergencyMode(false);
        }
    }

    // TODO: Have a single point where we check for this timeout instead of twice (here and in the behavior)
    // check if odometry is current. If not, the GPS was bad so we stop moving.
    // Note that the mowing behavior will pause as well by itself.
    // 如果没有持续更新位姿，说明位姿信息断开，需要停止
    if (ros::Time::now() - pose_time > ros::Duration(1.0)) {
        ROS_ERROR_STREAM("33333");
        stopBlade();
        stopMoving();
        ROS_WARN_STREAM_THROTTLE(5, "om_mower_logic: EMERGENCY pose values stopped. dt was: " << (ros::Time::now() - pose_time));
        return;
    }
 
    // check if status is current. if not, we have a problem since it contains wheel ticks and so on.
    // Since these should never drop out, we enter emergency instead of "only" stopping
    if (ros::Time::now() - status_time > ros::Duration(3)) {
        ROS_ERROR_STREAM("111");
        setEmergencyMode(true);
        ROS_WARN_STREAM_THROTTLE(5, "om_mower_logic: EMERGENCY /mower/status values stopped. dt was: " << (ros::Time::now() - status_time));
        return;
    }

    // If the motor controllers error, we enter emergency mode in the hope to save them. They should not error.
    // TODO: 
    if (last_status.right_esc_status.status <= mower_msgs::ESCStatus::ESC_STATUS_ERROR || last_status.left_esc_status.status <= mower_msgs::ESCStatus ::ESC_STATUS_ERROR) {
        ROS_ERROR_STREAM("222");
        setEmergencyMode(true);
        ROS_ERROR_STREAM(
                "EMERGENCY: at least one motor control errored. errors left: " 
                << (last_status.left_esc_status)
                << ", status right: "
                << last_status.right_esc_status);
        return;
    }

    // We need orientation and a positional accuracy less than configured
    bool gpsGoodNow = isGpsGood();
    if (gpsGoodNow || last_config.ignore_gps_errors) {
        last_good_gps = ros::Time::now();
        high_level_status.gps_quality_percent = 1.0 - fmin(1.0, last_pose.position_accuracy / last_config.max_position_accuracy);
        ROS_INFO_STREAM_THROTTLE(10, "GPS quality: " << high_level_status.gps_quality_percent);
    } else {
        // GPS = bad, set quality to 0
        high_level_status.gps_quality_percent = 0;
        if(last_pose.orientation_valid) {
            // set this if we don't even have an orientation
            high_level_status.gps_quality_percent = -1;
        }
        ROS_WARN_STREAM_THROTTLE(1,"Low quality GPS");
    }

    bool gpsTimeout = ros::Time::now() - last_good_gps > ros::Duration(last_config.gps_timeout);

    if(gpsTimeout) {
        // GPS = bad, set quality to 0
        high_level_status.gps_quality_percent = 0;
        ROS_WARN_STREAM_THROTTLE(1,"GPS timeout");
    }

    // FIXME:

    // if (currentBehavior != nullptr && currentBehavior->needs_gps()) {
    //     // Stop the mower
    //     if(gpsTimeout) {
    //         stopBlade();
    //         stopMoving();
    //     }
    //     currentBehavior->setGPSConnection(!gpsTimeout);
    // }

    double battery_percent = (last_status.v_battery - last_config.battery_empty_voltage) / (last_config.battery_full_voltage - last_config.battery_empty_voltage);
    if(battery_percent > 1.0) {
        battery_percent = 1.0;
    } else if(battery_percent < 0.0) {
        battery_percent = 0.0;
    }
    high_level_status.battery_percent = battery_percent;

    // we are in non emergency, check if we should pause. This could be empty battery, rain or hot mower motor etc.
    // TODO: 一直刷新等待，展示效果不好
    if ( last_status.v_battery < last_config.battery_empty_voltage) {
        // FIXME: 电量获取
        // ROS_ERROR_STREAM("empty battery");
        // abortExecution();
    } else if (last_status.mow_esc_status.temperature_motor >= last_config.motor_hot_temperature) {
        ROS_ERROR_STREAM("hot mower motor");
        abortExecution();
    } else if (last_status.rain_detected) {
        ROS_ERROR_STREAM("rain detected");
        abortExecution();
    } else if (last_config.manual_pause_mowing) {
        ROS_ERROR_STREAM("manual pause mowing");
        abortExecution();
    } else {
        ROS_INFO_STREAM("there is no empty battery, rain or hot mower motor etc.");
    }
}

// 重配置参数
void reconfigureCB(mower_logic::MowerLogicConfig &c, uint32_t level) {
    ROS_INFO_STREAM("[mower_logic] Setting mower_logic config");
    last_config = c;
}

bool highLevelCommand(mower_msgs::HighLevelControlSrvRequest &req, mower_msgs::HighLevelControlSrvResponse &res) {
    switch(req.command) {
        case mower_msgs::HighLevelControlSrvRequest::COMMAND_HOME:
	        ROS_INFO_STREAM("COMMAND_HOME");
            if(currentBehavior) {
                currentBehavior->command_home();
            }
            break;
        case mower_msgs::HighLevelControlSrvRequest::COMMAND_START:
		    ROS_INFO_STREAM("COMMAND_START");
            if(currentBehavior) {
                currentBehavior->command_start();
            }
            break;
        case mower_msgs::HighLevelControlSrvRequest::COMMAND_S1:
		    ROS_INFO_STREAM("COMMAND_S1");
            if(currentBehavior) {
                currentBehavior->command_s1();
            }
            break;
        case mower_msgs::HighLevelControlSrvRequest::COMMAND_S2:
	        ROS_INFO_STREAM("COMMAND_S2"); 
            if(currentBehavior) {
                currentBehavior->command_s2();
            }
            break;
        case mower_msgs::HighLevelControlSrvRequest::COMMAND_DELETE_MAPS: {
            ROS_WARN_STREAM("COMMAND_DELETE_MAPS");
            if (currentBehavior != &AreaRecordingBehavior::INSTANCE && currentBehavior != &IdleBehavior::INSTANCE &&
                currentBehavior !=
                nullptr) {
                ROS_ERROR_STREAM("Deleting maps is only allowed during IDLE or AreaRecording!");
                return true;
            }
            mower_map::ClearMapSrv clear_map_srv;
            // TODO check result
            clearMapClient.call(clear_map_srv);

            // Abort the current behavior. Idle will refresh and go to AreaRecorder, AreaRecorder will to to Idle wich will go to a fresh AreaRecorder
            currentBehavior->abort();
        }
            break;
        case mower_msgs::HighLevelControlSrvRequest::COMMAND_RESET_EMERGENCY:
            ROS_WARN_STREAM("COMMAND_RESET_EMERGENCY");
            setEmergencyMode(false);
            break;
    }
    return true;
}

// 对接受的action进行处理
void actionReceived(const std_msgs::String::ConstPtr &action) {
    if(currentBehavior) {
        currentBehavior->handle_action(action->data);
    }
}

// 对手柄控制信息进行处理，且确保只有在记录区域状态的时候控制有效
void joyVelReceived(const geometry_msgs::Twist::ConstPtr &joy_vel) {
    if(currentBehavior && currentBehavior->redirect_joystick()) {
        cmd_vel_pub.publish(joy_vel);
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "mower_logic");

    n = new ros::NodeHandle();
    paramNh = new ros::NodeHandle("~");

    boost::recursive_mutex mutex;

    reconfigServer = new dynamic_reconfigure::Server<mower_logic::MowerLogicConfig>(mutex, *paramNh);
    reconfigServer->setCallback(reconfigureCB);

    // 根据运行逻辑来进行小车控制
    cmd_vel_pub = n->advertise<geometry_msgs::Twist>(
            "/logic_vel", 1);
    high_level_state_publisher = n->advertise<mower_msgs::HighLevelStatus>(
            "mower_logic/current_state", 100, true);

    // 地图服务
    mapClient = n->serviceClient<mower_map::GetMowingAreaSrv>(
            "mower_map_service/get_mowing_area");
    clearMapClient = n->serviceClient<mower_map::ClearMapSrv>(
            "mower_map_service/clear_map");
    dockingPointClient = n->serviceClient<mower_map::GetDockingPointSrv>(
            "mower_map_service/get_docking_point");
    setNavPointClient = n->serviceClient<mower_map::SetNavPointSrv>(
            "mower_map_service/set_nav_point");
    clearNavPointClient = n->serviceClient<mower_map::ClearNavPointSrv>(
            "mower_map_service/clear_nav_point");

    // 定位服务
    gpsClient = n->serviceClient<xbot_positioning::GPSControlSrv>(
            "xbot_positioning/set_gps_state");
    positioningClient = n->serviceClient<xbot_positioning::SetPoseSrv>(
            "xbot_positioning/set_robot_pose");

    // action注册服务
    actionRegistrationClient = n->serviceClient<xbot_msgs::RegisterActionsSrv>(
            "xbot/register_actions");

    // 机身服务
    mowClient = n->serviceClient<mower_msgs::MowerControlSrv>(
            "mower_service/mow_enabled");
    emergencyClient = n->serviceClient<mower_msgs::EmergencyStopSrv>(
            "mower_service/emergency");

    // 路径规划服务
    pathClient = n->serviceClient<slic3r_coverage_planner::PlanPath>(
            "slic3r_coverage_planner/plan_path");
    pathProgressClient = n->serviceClient<ftc_local_planner::PlannerGetProgress>(
            "/move_base_flex/FTCPlanner/planner_get_progress");

    // 路径规划action
    mbfClient = new actionlib::SimpleActionClient<mbf_msgs::MoveBaseAction>("/move_base_flex/move_base");
    mbfClientExePath = new actionlib::SimpleActionClient<mbf_msgs::ExePathAction>("/move_base_flex/exe_path");

    // 订阅消息处理（机身状态、位姿、手柄、行为）
    ros::Subscriber status_sub = n->subscribe("/mower/status", 0, statusReceived, ros::TransportHints().tcpNoDelay(true));
    ros::Subscriber pose_sub = n->subscribe("/xbot_positioning/xb_pose", 0, poseReceived, ros::TransportHints().tcpNoDelay(true));
    ros::Subscriber joy_cmd = n->subscribe("/joy_vel", 0, joyVelReceived, ros::TransportHints().tcpNoDelay(true));
    ros::Subscriber action = n->subscribe("/xbot/action", 0, actionReceived, ros::TransportHints().tcpNoDelay(true));

    // 订阅服务处理（高级控制服务）
    ros::ServiceServer high_level_control_srv = n->advertiseService("mower_service/high_level_control", highLevelCommand);

    // 开启两个异步线程
    ros::AsyncSpinner asyncSpinner(2);
    asyncSpinner.start();

    ros::Rate r(1.0);

    // 如果服务不存在，会输出错误信息，
    // 并使用delete操作符删除动态分配的对象。
    // 这样做的目的是，如果某个服务没有成功启动或找到，
    // 那么依赖于这些服务的对象就不应该被创建或使用，
    // 因此需要释放它们占用的内存。


    ROS_INFO("Waiting for a status message");
    while (status_time == ros::Time(0.0)) {
        if (!ros::ok()) {
            delete (reconfigServer);
            delete (mbfClient);
            delete (mbfClientExePath);
            return 1;
        }
        r.sleep();
    }

    ROS_INFO("Waiting for a pose message");
    while (pose_time == ros::Time(0.0)) {
        if (!ros::ok()) {
            delete (reconfigServer);
            delete (mbfClient);
            delete (mbfClientExePath);
            return 1;
        }
        r.sleep();
    }

    ROS_INFO("[Waiting for server] mapClient");
    if (!mapClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] mapClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 2;
    }

    ROS_INFO("[Waiting for server] clearMapClient");
    if (!clearMapClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] clearMapClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 2;
    }

    ROS_INFO("[Waiting for server] dockingPointClient");
    if (!dockingPointClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] dockingPointClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 2;
    }

    ROS_INFO("[Waiting for server] setNavPointClient");
    if (!setNavPointClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] setNavPointClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 2;
    }

    ROS_INFO("[Waiting for server] clearNavPointClient");
    if (!clearMapClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] clearNavPointClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 2;
    }

    ROS_INFO("[Waiting for server] gpsClient");
    if (!gpsClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] gpsClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 1;
    }

    ROS_INFO("[Waiting for server] positioningClient");
    if (!positioningClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] positioningClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 1;
    }

    ROS_INFO("[Waiting for server] actionRegistrationClient");
    if (!actionRegistrationClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] actionRegistrationClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 1;
    }

    ROS_INFO("[Waiting for server] mowClient");
    if (!mowClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] mowClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 1;
    }

    ROS_INFO("[Waiting for server] emergencyClient");
    if (!emergencyClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] emergencyClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 1;
    }

    ROS_INFO("[Waiting for server] pathClient");
    if (!pathClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] pathClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 3;
    }

    ROS_INFO("[Waiting for server] pathProgressClient");
    if (!pathProgressClient.waitForExistence(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] pathProgressClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 3;
    }

    ROS_INFO("[Waiting for server] mbfClient");
    if (!mbfClient->waitForServer(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] mbfClient");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 3;
    }

    ROS_INFO("[Waiting for server] mbfClientExePath");
    if (!mbfClientExePath->waitForServer(ros::Duration(20.0))) {
        ROS_ERROR("[Server service not found] mbfClientExePath");
        delete (reconfigServer); delete (mbfClient); delete (mbfClientExePath); return 3;
    }

    // 确保在以上服务都启动之后的10秒内没有警告，可判断程序启动正常
    ros::Time started = ros::Time::now();
    while((ros::Time::now() - started).toSec() < 10.0) {
        ROS_INFO_STREAM("Waiting for an emergency status message");
        r.sleep();
        if(last_status.emergency) {
            ROS_INFO_STREAM("Got emergency, resetting it");
            setEmergencyMode(false);
            break;
        }
    }

    // 开始正常运行
    ROS_INFO("[mower_logic] ####### All services started normally. #######");
    setEmergencyMode(false); 

    // 定期检查
    ros::Timer safety_timer = n->createTimer(ros::Duration(0.5), checkSafety);
    ros::Timer ui_timer = n->createTimer(ros::Duration(1.0), updateUI);

    // 主程序以状态机的形式循环执行
    while (ros::ok()) {
        // 如果现在的状态非空，执行这个状态的功能（启动、执行、获取下一个状态、退出、进入下一个状态）
        // 如果状态为空，到达未知状态，出错并报警
        if (currentBehavior != nullptr) {
            currentBehavior->start(last_config);
            Behavior *newBehavior = currentBehavior->execute();
            currentBehavior->exit();
            currentBehavior = newBehavior;
        } else {
            high_level_status.state_name = "NULL";
            high_level_status.state = mower_msgs::HighLevelStatus::HIGH_LEVEL_STATE_NULL;
            high_level_state_publisher.publish(high_level_status);
            ROS_ERROR_STREAM("### null behavior， please check ###");
            setEmergencyMode(true);
            ros::Rate r(1.0);
            r.sleep();
        }
    }

    delete (n);
    delete (paramNh);
    delete (reconfigServer);
    delete (mbfClient);
    delete (mbfClientExePath);
    return 0;
}

/*
rostopic echo /joy_vel
rostopic echo /logic_vel
rostopic echo /move_base_flex/exe_path/cancel
rostopic echo /move_base_flex/exe_path/feedback
rostopic echo /move_base_flex/exe_path/goal
rostopic echo /move_base_flex/exe_path/result
rostopic echo /move_base_flex/exe_path/status
rostopic echo /move_base_flex/move_base/cancel
rostopic echo /move_base_flex/move_base/feedback
rostopic echo /move_base_flex/move_base/goal
rostopic echo /move_base_flex/move_base/result
rostopic echo /move_base_flex/move_base/status
rostopic echo /mower_logic/current_state
rostopic echo /mower_logic/mowing_path
rostopic echo /mower_logic/parameter_descriptions
rostopic echo /mower_logic/parameter_updates
rostopic echo /xbot/action
rostopic echo /xbot_positioning/xb_pose
*/