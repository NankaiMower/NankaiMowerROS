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

class GPSControlSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps_enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('gps_enabled')) {
        this.gps_enabled = initObj.gps_enabled
      }
      else {
        this.gps_enabled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSControlSrvRequest
    // Serialize message field [gps_enabled]
    bufferOffset = _serializer.uint8(obj.gps_enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSControlSrvRequest
    let len;
    let data = new GPSControlSrvRequest(null);
    // Deserialize message field [gps_enabled]
    data.gps_enabled = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/GPSControlSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9982cf964c37d45435cd4a8d34d8df4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 gps_enabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPSControlSrvRequest(null);
    if (msg.gps_enabled !== undefined) {
      resolved.gps_enabled = msg.gps_enabled;
    }
    else {
      resolved.gps_enabled = 0
    }

    return resolved;
    }
};

class GPSControlSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSControlSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSControlSrvResponse
    let len;
    let data = new GPSControlSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/GPSControlSrvResponse';
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
    const resolved = new GPSControlSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: GPSControlSrvRequest,
  Response: GPSControlSrvResponse,
  md5sum() { return 'd9982cf964c37d45435cd4a8d34d8df4'; },
  datatype() { return 'mower_msgs/GPSControlSrv'; }
};
