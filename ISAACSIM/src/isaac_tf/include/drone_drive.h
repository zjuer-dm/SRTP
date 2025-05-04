#ifndef __DRONE_DRIVE_H
#define __DRONE_DRIVE_H

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/JointState.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

namespace Drone {

class DroneDrive {
public:
  DroneDrive() {}
  void init(ros::NodeHandle &nh);

private:
  // 动捕数据订阅
  ros::Subscriber mocap_pos_sub;
  ros::Subscriber mocap_vel_sub;
  geometry_msgs::PoseStamped current_mocap_pose;  // 当前动捕位置
  geometry_msgs::TwistStamped current_mocap_vel;  // 当前动捕速度

  // 控制指令发布
  ros::Publisher joint_pub;
  ros::Timer cmd_pub_timer;

  // 回调函数
  void mocapPosCb(const geometry_msgs::PoseStamped::ConstPtr& msg);
  void mocapVelCb(const geometry_msgs::TwistStamped::ConstPtr& msg);
  void cmdPubTimerCb(const ros::TimerEvent &e);
};

} // namespace Drone

#endif // __DRONE_DRIVE_H