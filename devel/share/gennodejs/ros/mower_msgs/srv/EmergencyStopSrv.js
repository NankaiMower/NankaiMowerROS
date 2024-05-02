// Auto-generated. Do not edit!

// (in-package mower_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class EmergencyStopSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.emergency = null;
    }
    else {
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmergencyStopSrvRequest
    // Serialize message field [emergency]
    bufferOffset = _serializer.uint8(obj.emergency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmergencyStopSrvRequest
    let len;
    let data = new EmergencyStopSrvRequest(null);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/EmergencyStopSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00b85207f5d294f8ce1433699fc5397c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 emergency
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmergencyStopSrvRequest(null);
    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = 0
    }

    return resolved;
    }
};

class EmergencyStopSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmergencyStopSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmergencyStopSrvResponse
    let len;
    let data = new EmergencyStopSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/EmergencyStopSrvResponse';
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
    const resolved = new EmergencyStopSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: EmergencyStopSrvRequest,
  Response: EmergencyStopSrvResponse,
  md5sum() { return '00b85207f5d294f8ce1433699fc5397c'; },
  datatype() { return 'mower_msgs/EmergencyStopSrv'; }
};
