;; Auto-generated. Do not edit!


(when (boundp 'drone_msgs::ExecStatus)
  (if (not (find-package "DRONE_MSGS"))
    (make-package "DRONE_MSGS"))
  (shadow 'ExecStatus (find-package "DRONE_MSGS")))
(unless (find-package "DRONE_MSGS::EXECSTATUS")
  (make-package "DRONE_MSGS::EXECSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ExecStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*EXEC_STATUS_INIT*" (find-package "DRONE_MSGS::EXECSTATUS"))
(shadow '*EXEC_STATUS_INIT* (find-package "DRONE_MSGS::EXECSTATUS"))
(defconstant drone_msgs::ExecStatus::*EXEC_STATUS_INIT* 0)
(intern "*EXECY_STATUS_WAIT_TARGET*" (find-package "DRONE_MSGS::EXECSTATUS"))
(shadow '*EXECY_STATUS_WAIT_TARGET* (find-package "DRONE_MSGS::EXECSTATUS"))
(defconstant drone_msgs::ExecStatus::*EXECY_STATUS_WAIT_TARGET* 1)
(intern "*EXEC_STATUS_GEN_NEW_TRAJ*" (find-package "DRONE_MSGS::EXECSTATUS"))
(shadow '*EXEC_STATUS_GEN_NEW_TRAJ* (find-package "DRONE_MSGS::EXECSTATUS"))
(defconstant drone_msgs::ExecStatus::*EXEC_STATUS_GEN_NEW_TRAJ* 2)
(intern "*EXEC_STATUS_REPLAN_TRAJ*" (find-package "DRONE_MSGS::EXECSTATUS"))
(shadow '*EXEC_STATUS_REPLAN_TRAJ* (find-package "DRONE_MSGS::EXECSTATUS"))
(defconstant drone_msgs::ExecStatus::*EXEC_STATUS_REPLAN_TRAJ* 3)
(intern "*EXEC_STATUS_EXEC_TRAJ*" (find-package "DRONE_MSGS::EXECSTATUS"))
(shadow '*EXEC_STATUS_EXEC_TRAJ* (find-package "DRONE_MSGS::EXECSTATUS"))
(defconstant drone_msgs::ExecStatus::*EXEC_STATUS_EXEC_TRAJ* 4)
(intern "*EXEC_STATUS_EMERGENCY_STOP*" (find-package "DRONE_MSGS::EXECSTATUS"))
(shadow '*EXEC_STATUS_EMERGENCY_STOP* (find-package "DRONE_MSGS::EXECSTATUS"))
(defconstant drone_msgs::ExecStatus::*EXEC_STATUS_EMERGENCY_STOP* 5)

(defun drone_msgs::ExecStatus-to-symbol (const)
  (cond
        ((= const 0) 'drone_msgs::ExecStatus::*EXEC_STATUS_INIT*)
        ((= const 1) 'drone_msgs::ExecStatus::*EXECY_STATUS_WAIT_TARGET*)
        ((= const 2) 'drone_msgs::ExecStatus::*EXEC_STATUS_GEN_NEW_TRAJ*)
        ((= const 3) 'drone_msgs::ExecStatus::*EXEC_STATUS_REPLAN_TRAJ*)
        ((= const 4) 'drone_msgs::ExecStatus::*EXEC_STATUS_EXEC_TRAJ*)
        ((= const 5) 'drone_msgs::ExecStatus::*EXEC_STATUS_EMERGENCY_STOP*)
        (t nil)))

(defclass drone_msgs::ExecStatus
  :super ros::object
  :slots (_header _exec_flag ))

(defmethod drone_msgs::ExecStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:exec_flag __exec_flag) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _exec_flag (round __exec_flag))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:exec_flag
   (&optional __exec_flag)
   (if __exec_flag (setq _exec_flag __exec_flag)) _exec_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _exec_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _exec_flag
       (write-byte _exec_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _exec_flag
     (setq _exec_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get drone_msgs::ExecStatus :md5sum-) "cedea8b1481a61431e7301e6e90fa742")
(setf (get drone_msgs::ExecStatus :datatype-) "drone_msgs/ExecStatus")
(setf (get drone_msgs::ExecStatus :definition-)
      "Header header

uint8 exec_flag

uint8 EXEC_STATUS_INIT = 0
uint8 EXECY_STATUS_WAIT_TARGET = 1
uint8 EXEC_STATUS_GEN_NEW_TRAJ = 2
uint8 EXEC_STATUS_REPLAN_TRAJ = 3
uint8 EXEC_STATUS_EXEC_TRAJ = 4
uint8 EXEC_STATUS_EMERGENCY_STOP = 5

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :drone_msgs/ExecStatus "cedea8b1481a61431e7301e6e90fa742")


