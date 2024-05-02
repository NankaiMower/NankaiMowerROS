// Auto-generated. Do not edit!

// (in-package mower_map.srv)


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

class SetNavPointSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nav_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('nav_pose')) {
        this.nav_pose = initObj.nav_pose
      }
      else {
        this.nav_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNavPointSrvRequest
    // Serialize message field [nav_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.nav_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavPointSrvRequest
    let len;
    let data = new SetNavPointSrvRequest(null);
    // Deserialize message field [nav_pose]
    data.nav_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/SetNavPointSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57762a01338710861d6dcc49f7745df2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose nav_pose
    
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
    const resolved = new SetNavPointSrvRequest(null);
    if (msg.nav_pose !== undefined) {
      resolved.nav_pose = geometry_msgs.msg.Pose.Resolve(msg.nav_pose)
    }
    else {
      resolved.nav_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class SetNavPointSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetNavPointSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetNavPointSrvResponse
    let len;
    let data = new SetNavPointSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/SetNavPointSrvResponse';
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
    const resolved = new SetNavPointSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetNavPointSrvRequest,
  Response: SetNavPointSrvResponse,
  md5sum() { return '57762a01338710861d6dcc49f7745df2'; },
  datatype() { return 'mower_map/SetNavPointSrv'; }
};
