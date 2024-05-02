// Auto-generated. Do not edit!

// (in-package mower_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HighLevelStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.state_name = null;
      this.sub_state_name = null;
      this.gps_quality_percent = null;
      this.battery_percent = null;
      this.is_charging = null;
      this.emergency = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('state_name')) {
        this.state_name = initObj.state_name
      }
      else {
        this.state_name = '';
      }
      if (initObj.hasOwnProperty('sub_state_name')) {
        this.sub_state_name = initObj.sub_state_name
      }
      else {
        this.sub_state_name = '';
      }
      if (initObj.hasOwnProperty('gps_quality_percent')) {
        this.gps_quality_percent = initObj.gps_quality_percent
      }
      else {
        this.gps_quality_percent = 0.0;
      }
      if (initObj.hasOwnProperty('battery_percent')) {
        this.battery_percent = initObj.battery_percent
      }
      else {
        this.battery_percent = 0.0;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HighLevelStatus
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [state_name]
    bufferOffset = _serializer.string(obj.state_name, buffer, bufferOffset);
    // Serialize message field [sub_state_name]
    bufferOffset = _serializer.string(obj.sub_state_name, buffer, bufferOffset);
    // Serialize message field [gps_quality_percent]
    bufferOffset = _serializer.float32(obj.gps_quality_percent, buffer, bufferOffset);
    // Serialize message field [battery_percent]
    bufferOffset = _serializer.float32(obj.battery_percent, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.bool(obj.emergency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighLevelStatus
    let len;
    let data = new HighLevelStatus(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state_name]
    data.state_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sub_state_name]
    data.sub_state_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_quality_percent]
    data.gps_quality_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_percent]
    data.battery_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state_name);
    length += _getByteLength(object.sub_state_name);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mower_msgs/HighLevelStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db5c3531ba581d4c594cc4da6f89eb3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 HIGH_LEVEL_STATE_NULL=0
    uint8 HIGH_LEVEL_STATE_IDLE=1
    uint8 HIGH_LEVEL_STATE_AUTONOMOUS=2
    uint8 HIGH_LEVEL_STATE_RECORDING=3
    
    uint8 SUBSTATE_1=0
    uint8 SUBSTATE_2=1
    uint8 SUBSTATE_3=2
    uint8 SUBSTATE_4=3
    uint8 SUBSTATE_SHIFT=6
    
    uint8 state
    string state_name
    string sub_state_name
    float32 gps_quality_percent
    float32 battery_percent
    bool is_charging
    bool emergency
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HighLevelStatus(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.state_name !== undefined) {
      resolved.state_name = msg.state_name;
    }
    else {
      resolved.state_name = ''
    }

    if (msg.sub_state_name !== undefined) {
      resolved.sub_state_name = msg.sub_state_name;
    }
    else {
      resolved.sub_state_name = ''
    }

    if (msg.gps_quality_percent !== undefined) {
      resolved.gps_quality_percent = msg.gps_quality_percent;
    }
    else {
      resolved.gps_quality_percent = 0.0
    }

    if (msg.battery_percent !== undefined) {
      resolved.battery_percent = msg.battery_percent;
    }
    else {
      resolved.battery_percent = 0.0
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = false
    }

    return resolved;
    }
};

// Constants for message
HighLevelStatus.Constants = {
  HIGH_LEVEL_STATE_NULL: 0,
  HIGH_LEVEL_STATE_IDLE: 1,
  HIGH_LEVEL_STATE_AUTONOMOUS: 2,
  HIGH_LEVEL_STATE_RECORDING: 3,
  SUBSTATE_1: 0,
  SUBSTATE_2: 1,
  SUBSTATE_3: 2,
  SUBSTATE_4: 3,
  SUBSTATE_SHIFT: 6,
}

module.exports = HighLevelStatus;
