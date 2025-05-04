; Auto-generated. Do not edit!


(cl:in-package drone_msgs-msg)


;//! \htmlinclude ExecStatus.msg.html

(cl:defclass <ExecStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (exec_flag
    :reader exec_flag
    :initarg :exec_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ExecStatus (<ExecStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_msgs-msg:<ExecStatus> is deprecated: use drone_msgs-msg:ExecStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-msg:header-val is deprecated.  Use drone_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'exec_flag-val :lambda-list '(m))
(cl:defmethod exec_flag-val ((m <ExecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_msgs-msg:exec_flag-val is deprecated.  Use drone_msgs-msg:exec_flag instead.")
  (exec_flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExecStatus>)))
    "Constants for message type '<ExecStatus>"
  '((:EXEC_STATUS_INIT . 0)
    (:EXECY_STATUS_WAIT_TARGET . 1)
    (:EXEC_STATUS_GEN_NEW_TRAJ . 2)
    (:EXEC_STATUS_REPLAN_TRAJ . 3)
    (:EXEC_STATUS_EXEC_TRAJ . 4)
    (:EXEC_STATUS_EMERGENCY_STOP . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExecStatus)))
    "Constants for message type 'ExecStatus"
  '((:EXEC_STATUS_INIT . 0)
    (:EXECY_STATUS_WAIT_TARGET . 1)
    (:EXEC_STATUS_GEN_NEW_TRAJ . 2)
    (:EXEC_STATUS_REPLAN_TRAJ . 3)
    (:EXEC_STATUS_EXEC_TRAJ . 4)
    (:EXEC_STATUS_EMERGENCY_STOP . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecStatus>) ostream)
  "Serializes a message object of type '<ExecStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exec_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecStatus>) istream)
  "Deserializes a message object of type '<ExecStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exec_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecStatus>)))
  "Returns string type for a message object of type '<ExecStatus>"
  "drone_msgs/ExecStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecStatus)))
  "Returns string type for a message object of type 'ExecStatus"
  "drone_msgs/ExecStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecStatus>)))
  "Returns md5sum for a message object of type '<ExecStatus>"
  "cedea8b1481a61431e7301e6e90fa742")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecStatus)))
  "Returns md5sum for a message object of type 'ExecStatus"
  "cedea8b1481a61431e7301e6e90fa742")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecStatus>)))
  "Returns full string definition for message of type '<ExecStatus>"
  (cl:format cl:nil "Header header~%~%uint8 exec_flag~%~%uint8 EXEC_STATUS_INIT = 0~%uint8 EXECY_STATUS_WAIT_TARGET = 1~%uint8 EXEC_STATUS_GEN_NEW_TRAJ = 2~%uint8 EXEC_STATUS_REPLAN_TRAJ = 3~%uint8 EXEC_STATUS_EXEC_TRAJ = 4~%uint8 EXEC_STATUS_EMERGENCY_STOP = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecStatus)))
  "Returns full string definition for message of type 'ExecStatus"
  (cl:format cl:nil "Header header~%~%uint8 exec_flag~%~%uint8 EXEC_STATUS_INIT = 0~%uint8 EXECY_STATUS_WAIT_TARGET = 1~%uint8 EXEC_STATUS_GEN_NEW_TRAJ = 2~%uint8 EXEC_STATUS_REPLAN_TRAJ = 3~%uint8 EXEC_STATUS_EXEC_TRAJ = 4~%uint8 EXEC_STATUS_EMERGENCY_STOP = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecStatus
    (cl:cons ':header (header msg))
    (cl:cons ':exec_flag (exec_flag msg))
))
