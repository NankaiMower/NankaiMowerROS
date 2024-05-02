// Auto-generated. Do not edit!

// (in-package xbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ActionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_id = null;
      this.action_name = null;
      this.enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = '';
      }
      if (initObj.hasOwnProperty('action_name')) {
        this.action_name = initObj.action_name
      }
      else {
        this.action_name = '';
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionInfo
    // Serialize message field [action_id]
    bufferOffset = _serializer.string(obj.action_id, buffer, bufferOffset);
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionInfo
    let len;
    let data = new ActionInfo(null);
    // Deserialize message field [action_id]
    data.action_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_name]
    data.action_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action_id);
    length += _getByteLength(object.action_name);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/ActionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98dc1981a42cdfe360677d00f0e0730a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ActionInfo(null);
    if (msg.action_id !== undefined) {
      resolved.action_id = msg.action_id;
    }
    else {
      resolved.action_id = ''
    }

    if (msg.action_name !== undefined) {
      resolved.action_name = msg.action_name;
    }
    else {
      resolved.action_name = ''
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    return resolved;
    }
};

module.exports = ActionInfo;
