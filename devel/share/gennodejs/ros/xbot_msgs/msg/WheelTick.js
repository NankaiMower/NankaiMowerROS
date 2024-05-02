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

class WheelTick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.wheel_tick_factor = null;
      this.valid_wheels = null;
      this.wheel_direction_fl = null;
      this.wheel_ticks_fl = null;
      this.wheel_direction_fr = null;
      this.wheel_ticks_fr = null;
      this.wheel_direction_rl = null;
      this.wheel_ticks_rl = null;
      this.wheel_direction_rr = null;
      this.wheel_ticks_rr = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('wheel_tick_factor')) {
        this.wheel_tick_factor = initObj.wheel_tick_factor
      }
      else {
        this.wheel_tick_factor = 0;
      }
      if (initObj.hasOwnProperty('valid_wheels')) {
        this.valid_wheels = initObj.valid_wheels
      }
      else {
        this.valid_wheels = 0;
      }
      if (initObj.hasOwnProperty('wheel_direction_fl')) {
        this.wheel_direction_fl = initObj.wheel_direction_fl
      }
      else {
        this.wheel_direction_fl = 0;
      }
      if (initObj.hasOwnProperty('wheel_ticks_fl')) {
        this.wheel_ticks_fl = initObj.wheel_ticks_fl
      }
      else {
        this.wheel_ticks_fl = 0;
      }
      if (initObj.hasOwnProperty('wheel_direction_fr')) {
        this.wheel_direction_fr = initObj.wheel_direction_fr
      }
      else {
        this.wheel_direction_fr = 0;
      }
      if (initObj.hasOwnProperty('wheel_ticks_fr')) {
        this.wheel_ticks_fr = initObj.wheel_ticks_fr
      }
      else {
        this.wheel_ticks_fr = 0;
      }
      if (initObj.hasOwnProperty('wheel_direction_rl')) {
        this.wheel_direction_rl = initObj.wheel_direction_rl
      }
      else {
        this.wheel_direction_rl = 0;
      }
      if (initObj.hasOwnProperty('wheel_ticks_rl')) {
        this.wheel_ticks_rl = initObj.wheel_ticks_rl
      }
      else {
        this.wheel_ticks_rl = 0;
      }
      if (initObj.hasOwnProperty('wheel_direction_rr')) {
        this.wheel_direction_rr = initObj.wheel_direction_rr
      }
      else {
        this.wheel_direction_rr = 0;
      }
      if (initObj.hasOwnProperty('wheel_ticks_rr')) {
        this.wheel_ticks_rr = initObj.wheel_ticks_rr
      }
      else {
        this.wheel_ticks_rr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelTick
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [wheel_tick_factor]
    bufferOffset = _serializer.uint32(obj.wheel_tick_factor, buffer, bufferOffset);
    // Serialize message field [valid_wheels]
    bufferOffset = _serializer.uint8(obj.valid_wheels, buffer, bufferOffset);
    // Serialize message field [wheel_direction_fl]
    bufferOffset = _serializer.uint8(obj.wheel_direction_fl, buffer, bufferOffset);
    // Serialize message field [wheel_ticks_fl]
    bufferOffset = _serializer.uint32(obj.wheel_ticks_fl, buffer, bufferOffset);
    // Serialize message field [wheel_direction_fr]
    bufferOffset = _serializer.uint8(obj.wheel_direction_fr, buffer, bufferOffset);
    // Serialize message field [wheel_ticks_fr]
    bufferOffset = _serializer.uint32(obj.wheel_ticks_fr, buffer, bufferOffset);
    // Serialize message field [wheel_direction_rl]
    bufferOffset = _serializer.uint8(obj.wheel_direction_rl, buffer, bufferOffset);
    // Serialize message field [wheel_ticks_rl]
    bufferOffset = _serializer.uint32(obj.wheel_ticks_rl, buffer, bufferOffset);
    // Serialize message field [wheel_direction_rr]
    bufferOffset = _serializer.uint8(obj.wheel_direction_rr, buffer, bufferOffset);
    // Serialize message field [wheel_ticks_rr]
    bufferOffset = _serializer.uint32(obj.wheel_ticks_rr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelTick
    let len;
    let data = new WheelTick(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [wheel_tick_factor]
    data.wheel_tick_factor = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [valid_wheels]
    data.valid_wheels = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_fl]
    data.wheel_direction_fl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_ticks_fl]
    data.wheel_ticks_fl = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_fr]
    data.wheel_direction_fr = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_ticks_fr]
    data.wheel_ticks_fr = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_rl]
    data.wheel_direction_rl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_ticks_rl]
    data.wheel_ticks_rl = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_rr]
    data.wheel_direction_rr = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_ticks_rr]
    data.wheel_ticks_rr = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/WheelTick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de995dcce338bea62571dd7895d4e0e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used to count the wheel ticks for our robot.
    # It supports up to four wheels, if there are only two in use, use WHEEL_RL and WHEEL_RR
    # Ticks should always count independent of the wheel rotation. Use the direction to show wheel spin rotation
    
    uint8   WHEEL_VALID_FL=1
    uint8   WHEEL_VALID_FR=2
    uint8   WHEEL_VALID_RL=4
    uint8   WHEEL_VALID_RR=8
    
    time stamp
    uint32 wheel_tick_factor    # factor to use to convert wheel ticks to m
    uint8  valid_wheels         # Bitfield to show which ticks are valid
    uint8 wheel_direction_fl    # wheel direction front left
    uint32 wheel_ticks_fl       # wheel ticks front left
    uint8 wheel_direction_fr    # wheel direction front right
    uint32 wheel_ticks_fr       # wheel ticks front right
    uint8 wheel_direction_rl    # wheel direction rear left
    uint32 wheel_ticks_rl       # wheel ticks rear left
    uint8 wheel_direction_rr    # wheel direction rear right
    uint32 wheel_ticks_rr       # wheel ticks rear right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelTick(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.wheel_tick_factor !== undefined) {
      resolved.wheel_tick_factor = msg.wheel_tick_factor;
    }
    else {
      resolved.wheel_tick_factor = 0
    }

    if (msg.valid_wheels !== undefined) {
      resolved.valid_wheels = msg.valid_wheels;
    }
    else {
      resolved.valid_wheels = 0
    }

    if (msg.wheel_direction_fl !== undefined) {
      resolved.wheel_direction_fl = msg.wheel_direction_fl;
    }
    else {
      resolved.wheel_direction_fl = 0
    }

    if (msg.wheel_ticks_fl !== undefined) {
      resolved.wheel_ticks_fl = msg.wheel_ticks_fl;
    }
    else {
      resolved.wheel_ticks_fl = 0
    }

    if (msg.wheel_direction_fr !== undefined) {
      resolved.wheel_direction_fr = msg.wheel_direction_fr;
    }
    else {
      resolved.wheel_direction_fr = 0
    }

    if (msg.wheel_ticks_fr !== undefined) {
      resolved.wheel_ticks_fr = msg.wheel_ticks_fr;
    }
    else {
      resolved.wheel_ticks_fr = 0
    }

    if (msg.wheel_direction_rl !== undefined) {
      resolved.wheel_direction_rl = msg.wheel_direction_rl;
    }
    else {
      resolved.wheel_direction_rl = 0
    }

    if (msg.wheel_ticks_rl !== undefined) {
      resolved.wheel_ticks_rl = msg.wheel_ticks_rl;
    }
    else {
      resolved.wheel_ticks_rl = 0
    }

    if (msg.wheel_direction_rr !== undefined) {
      resolved.wheel_direction_rr = msg.wheel_direction_rr;
    }
    else {
      resolved.wheel_direction_rr = 0
    }

    if (msg.wheel_ticks_rr !== undefined) {
      resolved.wheel_ticks_rr = msg.wheel_ticks_rr;
    }
    else {
      resolved.wheel_ticks_rr = 0
    }

    return resolved;
    }
};

// Constants for message
WheelTick.Constants = {
  WHEEL_VALID_FL: 1,
  WHEEL_VALID_FR: 2,
  WHEEL_VALID_RL: 4,
  WHEEL_VALID_RR: 8,
}

module.exports = WheelTick;
