// Auto-generated. Do not edit!

// (in-package mower_map.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetDockingPointSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDockingPointSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDockingPointSrvRequest
    let len;
    let data = new GetDockingPointSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/GetDockingPointSrvRequest';
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
    const resolved = new GetDockingPointSrvRequest(null);
    return resolved;
    }
};

class GetDockingPointSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.docking_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('docking_pose')) {
        this.docking_pose = initObj.docking_pose
      }
      else {
        this.docking_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDockingPointSrvResponse
    // Serialize message field [docking_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.docking_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDockingPointSrvResponse
    let len;
    let data = new GetDockingPointSrvResponse(null);
    // Deserialize message field [docking_pose]
    data.docking_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/GetDockingPointSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '082f2ff1dbfba9861dd424f93f126a35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose docking_pose
    
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
    const resolved = new GetDockingPointSrvResponse(null);
    if (msg.docking_pose !== undefined) {
      resolved.docking_pose = geometry_msgs.msg.Pose.Resolve(msg.docking_pose)
    }
    else {
      resolved.docking_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDockingPointSrvRequest,
  Response: GetDockingPointSrvResponse,
  md5sum() { return '082f2ff1dbfba9861dd424f93f126a35'; },
  datatype() { return 'mower_map/GetDockingPointSrv'; }
};
