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


//-----------------------------------------------------------

class ConvertToNavigationAreaSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertToNavigationAreaSrvRequest
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertToNavigationAreaSrvRequest
    let len;
    let data = new ConvertToNavigationAreaSrvRequest(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/ConvertToNavigationAreaSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad7b979103dbd563a352ef5270716728';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertToNavigationAreaSrvRequest(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

class ConvertToNavigationAreaSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertToNavigationAreaSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertToNavigationAreaSrvResponse
    let len;
    let data = new ConvertToNavigationAreaSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/ConvertToNavigationAreaSrvResponse';
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
    const resolved = new ConvertToNavigationAreaSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ConvertToNavigationAreaSrvRequest,
  Response: ConvertToNavigationAreaSrvResponse,
  md5sum() { return 'ad7b979103dbd563a352ef5270716728'; },
  datatype() { return 'mower_map/ConvertToNavigationAreaSrv'; }
};
