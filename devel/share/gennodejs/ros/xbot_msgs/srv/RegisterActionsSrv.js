// Auto-generated. Do not edit!

// (in-package xbot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ActionInfo = require('../msg/ActionInfo.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RegisterActionsSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_prefix = null;
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('node_prefix')) {
        this.node_prefix = initObj.node_prefix
      }
      else {
        this.node_prefix = '';
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterActionsSrvRequest
    // Serialize message field [node_prefix]
    bufferOffset = _serializer.string(obj.node_prefix, buffer, bufferOffset);
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = ActionInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterActionsSrvRequest
    let len;
    let data = new RegisterActionsSrvRequest(null);
    // Deserialize message field [node_prefix]
    data.node_prefix = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = ActionInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.node_prefix);
    object.actions.forEach((val) => {
      length += ActionInfo.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xbot_msgs/RegisterActionsSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d2ab873c76b3d03247f8862ec188635';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string node_prefix                  # The prefix for the node registering / receiving the action. This is useful if multiple nodes are listening for actions and you want to make sure that the IDs don't collide
    xbot_msgs/ActionInfo[] actions      # The list of available actions
    
    ================================================================================
    MSG: xbot_msgs/ActionInfo
    string action_id                        # The ID used for this action
    string action_name                      # A human readable name for this action
    bool enabled                            # True, if the action is currently available
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterActionsSrvRequest(null);
    if (msg.node_prefix !== undefined) {
      resolved.node_prefix = msg.node_prefix;
    }
    else {
      resolved.node_prefix = ''
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = ActionInfo.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

class RegisterActionsSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterActionsSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterActionsSrvResponse
    let len;
    let data = new RegisterActionsSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xbot_msgs/RegisterActionsSrvResponse';
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
    const resolved = new RegisterActionsSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RegisterActionsSrvRequest,
  Response: RegisterActionsSrvResponse,
  md5sum() { return '0d2ab873c76b3d03247f8862ec188635'; },
  datatype() { return 'xbot_msgs/RegisterActionsSrv'; }
};
