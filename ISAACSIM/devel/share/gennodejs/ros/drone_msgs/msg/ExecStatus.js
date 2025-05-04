// Auto-generated. Do not edit!

// (in-package drone_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ExecStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.exec_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('exec_flag')) {
        this.exec_flag = initObj.exec_flag
      }
      else {
        this.exec_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [exec_flag]
    bufferOffset = _serializer.uint8(obj.exec_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecStatus
    let len;
    let data = new ExecStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [exec_flag]
    data.exec_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_msgs/ExecStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cedea8b1481a61431e7301e6e90fa742';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.exec_flag !== undefined) {
      resolved.exec_flag = msg.exec_flag;
    }
    else {
      resolved.exec_flag = 0
    }

    return resolved;
    }
};

// Constants for message
ExecStatus.Constants = {
  EXEC_STATUS_INIT: 0,
  EXECY_STATUS_WAIT_TARGET: 1,
  EXEC_STATUS_GEN_NEW_TRAJ: 2,
  EXEC_STATUS_REPLAN_TRAJ: 3,
  EXEC_STATUS_EXEC_TRAJ: 4,
  EXEC_STATUS_EMERGENCY_STOP: 5,
}

module.exports = ExecStatus;
