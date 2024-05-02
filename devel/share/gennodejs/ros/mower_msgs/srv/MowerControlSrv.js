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

class MowerControlSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mow_enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('mow_enabled')) {
        this.mow_enabled = initObj.mow_enabled
      }
      else {
        this.mow_enabled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MowerControlSrvRequest
    // Serialize message field [mow_enabled]
    bufferOffset = _serializer.uint8(obj.mow_enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MowerControlSrvRequest
    let len;
    let data = new MowerControlSrvRequest(null);
    // Deserialize message field [mow_enabled]
    data.mow_enabled = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/MowerControlSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '988e36b225a99f2ee6894313fe1d90a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mow_enabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MowerControlSrvRequest(null);
    if (msg.mow_enabled !== undefined) {
      resolved.mow_enabled = msg.mow_enabled;
    }
    else {
      resolved.mow_enabled = 0
    }

    return resolved;
    }
};

class MowerControlSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MowerControlSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MowerControlSrvResponse
    let len;
    let data = new MowerControlSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/MowerControlSrvResponse';
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
    const resolved = new MowerControlSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MowerControlSrvRequest,
  Response: MowerControlSrvResponse,
  md5sum() { return '988e36b225a99f2ee6894313fe1d90a3'; },
  datatype() { return 'mower_msgs/MowerControlSrv'; }
};
