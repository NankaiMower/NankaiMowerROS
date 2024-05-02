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

class AppendMapSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bagfile = null;
    }
    else {
      if (initObj.hasOwnProperty('bagfile')) {
        this.bagfile = initObj.bagfile
      }
      else {
        this.bagfile = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AppendMapSrvRequest
    // Serialize message field [bagfile]
    bufferOffset = _serializer.string(obj.bagfile, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AppendMapSrvRequest
    let len;
    let data = new AppendMapSrvRequest(null);
    // Deserialize message field [bagfile]
    data.bagfile = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.bagfile);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/AppendMapSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a935fd4be1d8c2e1777172fa15665bc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string bagfile
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AppendMapSrvRequest(null);
    if (msg.bagfile !== undefined) {
      resolved.bagfile = msg.bagfile;
    }
    else {
      resolved.bagfile = ''
    }

    return resolved;
    }
};

class AppendMapSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AppendMapSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AppendMapSrvResponse
    let len;
    let data = new AppendMapSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/AppendMapSrvResponse';
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
    const resolved = new AppendMapSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AppendMapSrvRequest,
  Response: AppendMapSrvResponse,
  md5sum() { return 'a935fd4be1d8c2e1777172fa15665bc9'; },
  datatype() { return 'mower_map/AppendMapSrv'; }
};
