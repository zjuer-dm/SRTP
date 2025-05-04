#include "drone_drive.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/TwistStamped.h"
#include <cmath>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2/LinearMath/Quaternion.h>

using namespace Drone;

// /vehicle0/vrpn_client_node/zj/pose

void DroneDrive::init(ros::NodeHandle &nh) {
  // 订阅动捕数据
  mocap_pos_sub = nh.subscribe("/vehicle0/vrpn_client_node/zj/pose", 1, &DroneDrive::mocapPosCb, this);
  mocap_vel_sub = nh.subscribe("/vehicle0/outer_velocity", 1, &DroneDrive::mocapVelCb, this);

  // 发布无人机控制指令
  joint_pub = nh.advertise<sensor_msgs::JointState>("/drone_cmd", 10);

  // 定时器用于发布控制指令
  cmd_pub_timer = nh.createTimer(ros::Duration(0.01), &DroneDrive::cmdPubTimerCb, this);
}

// 动捕位置回调
void DroneDrive::mocapPosCb(const geometry_msgs::PoseStamped::ConstPtr& msg) {
  // 检查数据是否有效
  if (std::isnan(msg->pose.position.x) || std::isnan(msg->pose.position.y) || std::isnan(msg->pose.position.z)) {
    ROS_WARN("Invalid position data received!");
    return;
  }
  current_mocap_pose = *msg;
}

// 动捕速度回调
void DroneDrive::mocapVelCb(const geometry_msgs::TwistStamped::ConstPtr& msg) {
  // 检查数据是否有效
  if (std::isnan(msg->twist.linear.x) || std::isnan(msg->twist.linear.y) || std::isnan(msg->twist.linear.z) ||
      std::isnan(msg->twist.angular.z)) {
    ROS_WARN("Invalid velocity data received!");
    return;
  }

  current_mocap_vel = *msg;
}

// 控制指令发布定时器回调
void DroneDrive::cmdPubTimerCb(const ros::TimerEvent &e) {
  // 使用动捕数据的时间戳
  ros::Time current_time = current_mocap_pose.header.stamp;

  //检查动捕数据是否超时
  if ((ros::Time::now() - current_time).toSec() > 0.1) {
    ROS_WARN_THROTTLE(1.0, "Mocap position data timeout! Holding position.");
    return;
  }

  // 提取偏航角
  // 提取四元数并强制归一化
  tf2::Quaternion q(
    current_mocap_pose.pose.orientation.x,
    current_mocap_pose.pose.orientation.y,
    current_mocap_pose.pose.orientation.z,
    current_mocap_pose.pose.orientation.w
  );
  q.normalize(); // 关键修复：归一化四元数

 
  double roll, pitch, yaw;
  tf2::Matrix3x3(q).getRPY(roll, pitch, yaw); 
  
   
  sensor_msgs::JointState joint_cmd;
  // joint_cmd.name = {"x_joint", "y_joint", "z_joint", "R_body","R_body_02", "R_body_03"};
  joint_cmd.name = {"x_joint", "y_joint", "z_joint", "R_body"};
  joint_cmd.position.assign({
    current_mocap_pose.pose.position.x,  // X 位置
    current_mocap_pose.pose.position.y,  // Y 位置
    current_mocap_pose.pose.position.z,  // Z 高度
    roll , // 偏航角
    // pitch,
    // yaw,
  });


  // 如果需要，可以在这里使用速度数据进行控制
  // 例如，使用 current_mocap_vel.twist.linear.x 等

  joint_cmd.header.stamp = ros::Time::now();
  joint_pub.publish(joint_cmd);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "drone_drive");
  ros::NodeHandle nh;

  Drone::DroneDrive drone_drive;
  drone_drive.init(nh);
  ROS_INFO("DroneDrive start with motion capture control.");
  ros::spin();
  return 0;
}