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

class HighLevelControlSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HighLevelControlSrvRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighLevelControlSrvRequest
    let len;
    let data = new HighLevelControlSrvRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/HighLevelControlSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c9afcf75aa7a3bc23f835cf875e0cde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 COMMAND_START=1
    uint8 COMMAND_HOME=2
    uint8 COMMAND_S1=3
    uint8 COMMAND_S2=4
    uint8 COMMAND_RESET_EMERGENCY=254
    uint8 COMMAND_DELETE_MAPS=255
    
    uint8 command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HighLevelControlSrvRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

// Constants for message
HighLevelControlSrvRequest.Constants = {
  COMMAND_START: 1,
  COMMAND_HOME: 2,
  COMMAND_S1: 3,
  COMMAND_S2: 4,
  COMMAND_RESET_EMERGENCY: 254,
  COMMAND_DELETE_MAPS: 255,
}

class HighLevelControlSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HighLevelControlSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighLevelControlSrvResponse
    let len;
    let data = new HighLevelControlSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_msgs/HighLevelControlSrvResponse';
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
    const resolved = new HighLevelControlSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: HighLevelControlSrvRequest,
  Response: HighLevelControlSrvResponse,
  md5sum() { return '0c9afcf75aa7a3bc23f835cf875e0cde'; },
  datatype() { return 'mower_msgs/HighLevelControlSrv'; }
};
