// Auto-generated. Do not edit!

// (in-package xbot_positioning.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPoseSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPoseSrvRequest
    // Serialize message field [robot_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPoseSrvRequest
    let len;
    let data = new SetPoseSrvRequest(null);
    // Deserialize message field [robot_pose]
    data.robot_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xbot_positioning/SetPoseSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1e8e42f88161a7bc7869c4cb33b8e1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose robot_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPoseSrvRequest(null);
    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = geometry_msgs.msg.Pose.Resolve(msg.robot_pose)
    }
    else {
      resolved.robot_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class SetPoseSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPoseSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPoseSrvResponse
    let len;
    let data = new SetPoseSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xbot_positioning/SetPoseSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPoseSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetPoseSrvRequest,
  Response: SetPoseSrvResponse,
  md5sum() { return 'a1e8e42f88161a7bc7869c4cb33b8e1e'; },
  datatype() { return 'xbot_positioning/SetPoseSrv'; }
};
