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

class ImuRaw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dt = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
      this.gx = null;
      this.gy = null;
      this.gz = null;
      this.mx = null;
      this.my = null;
      this.mz = null;
    }
    else {
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0.0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0.0;
      }
      if (initObj.hasOwnProperty('gz')) {
        this.gz = initObj.gz
      }
      else {
        this.gz = 0.0;
      }
      if (initObj.hasOwnProperty('mx')) {
        this.mx = initObj.mx
      }
      else {
        this.mx = 0.0;
      }
      if (initObj.hasOwnProperty('my')) {
        this.my = initObj.my
      }
      else {
        this.my = 0.0;
      }
      if (initObj.hasOwnProperty('mz')) {
        this.mz = initObj.mz
      }
      else {
        this.mz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuRaw
    // Serialize message field [dt]
    bufferOffset = _serializer.uint16(obj.dt, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float64(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float64(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float64(obj.az, buffer, bufferOffset);
    // Serialize message field [gx]
    bufferOffset = _serializer.float64(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.float64(obj.gy, buffer, bufferOffset);
    // Serialize message field [gz]
    bufferOffset = _serializer.float64(obj.gz, buffer, bufferOffset);
    // Serialize message field [mx]
    bufferOffset = _serializer.float64(obj.mx, buffer, bufferOffset);
    // Serialize message field [my]
    bufferOffset = _serializer.float64(obj.my, buffer, bufferOffset);
    // Serialize message field [mz]
    bufferOffset = _serializer.float64(obj.mz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuRaw
    let len;
    let data = new ImuRaw(null);
    // Deserialize message field [dt]
    data.dt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gx]
    data.gx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gz]
    data.gz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mx]
    data.mx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [my]
    data.my = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mz]
    data.mz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mower_msgs/ImuRaw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0352b07cbe7d2a21d2573179fd87547d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16  dt           # dt in milliseconds
    float64 ax           # The linear acceleration in the X direction [m/s^2]
    float64 ay           # The linear acceleration in the Y direction [m/s^2]
    float64 az           # The linear acceleration in the Z direction [m/s^2]
    float64 gx           # The angular velocity about the X axis [rad/s]
    float64 gy           # The angular velocity about the Y axis [rad/s]
    float64 gz           # The angular velocity about the Z axis [rad/s]
    float64 mx           # The magnetic field strength in the X direction [uT]
    float64 my           # The magnetic field strength in the Y direction [uT]
    float64 mz           # The magnetic field strength in the Z direction [uT]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuRaw(null);
    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0.0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0.0
    }

    if (msg.gz !== undefined) {
      resolved.gz = msg.gz;
    }
    else {
      resolved.gz = 0.0
    }

    if (msg.mx !== undefined) {
      resolved.mx = msg.mx;
    }
    else {
      resolved.mx = 0.0
    }

    if (msg.my !== undefined) {
      resolved.my = msg.my;
    }
    else {
      resolved.my = 0.0
    }

    if (msg.mz !== undefined) {
      resolved.mz = msg.mz;
    }
    else {
      resolved.mz = 0.0
    }

    return resolved;
    }
};

module.exports = ImuRaw;
