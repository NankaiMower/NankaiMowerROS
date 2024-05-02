// Auto-generated. Do not edit!

// (in-package ftc_local_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.kp_lon_set = null;
      this.kp_lat_set = null;
      this.kp_ang_set = null;
      this.ki_lon_set = null;
      this.ki_lat_set = null;
      this.ki_ang_set = null;
      this.kd_lon_set = null;
      this.kd_lat_set = null;
      this.kd_ang_set = null;
      this.lon_err = null;
      this.lat_err = null;
      this.ang_err = null;
      this.ang_speed = null;
      this.lin_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('kp_lon_set')) {
        this.kp_lon_set = initObj.kp_lon_set
      }
      else {
        this.kp_lon_set = 0.0;
      }
      if (initObj.hasOwnProperty('kp_lat_set')) {
        this.kp_lat_set = initObj.kp_lat_set
      }
      else {
        this.kp_lat_set = 0.0;
      }
      if (initObj.hasOwnProperty('kp_ang_set')) {
        this.kp_ang_set = initObj.kp_ang_set
      }
      else {
        this.kp_ang_set = 0.0;
      }
      if (initObj.hasOwnProperty('ki_lon_set')) {
        this.ki_lon_set = initObj.ki_lon_set
      }
      else {
        this.ki_lon_set = 0.0;
      }
      if (initObj.hasOwnProperty('ki_lat_set')) {
        this.ki_lat_set = initObj.ki_lat_set
      }
      else {
        this.ki_lat_set = 0.0;
      }
      if (initObj.hasOwnProperty('ki_ang_set')) {
        this.ki_ang_set = initObj.ki_ang_set
      }
      else {
        this.ki_ang_set = 0.0;
      }
      if (initObj.hasOwnProperty('kd_lon_set')) {
        this.kd_lon_set = initObj.kd_lon_set
      }
      else {
        this.kd_lon_set = 0.0;
      }
      if (initObj.hasOwnProperty('kd_lat_set')) {
        this.kd_lat_set = initObj.kd_lat_set
      }
      else {
        this.kd_lat_set = 0.0;
      }
      if (initObj.hasOwnProperty('kd_ang_set')) {
        this.kd_ang_set = initObj.kd_ang_set
      }
      else {
        this.kd_ang_set = 0.0;
      }
      if (initObj.hasOwnProperty('lon_err')) {
        this.lon_err = initObj.lon_err
      }
      else {
        this.lon_err = 0.0;
      }
      if (initObj.hasOwnProperty('lat_err')) {
        this.lat_err = initObj.lat_err
      }
      else {
        this.lat_err = 0.0;
      }
      if (initObj.hasOwnProperty('ang_err')) {
        this.ang_err = initObj.ang_err
      }
      else {
        this.ang_err = 0.0;
      }
      if (initObj.hasOwnProperty('ang_speed')) {
        this.ang_speed = initObj.ang_speed
      }
      else {
        this.ang_speed = 0.0;
      }
      if (initObj.hasOwnProperty('lin_speed')) {
        this.lin_speed = initObj.lin_speed
      }
      else {
        this.lin_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PID
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [kp_lon_set]
    bufferOffset = _serializer.float32(obj.kp_lon_set, buffer, bufferOffset);
    // Serialize message field [kp_lat_set]
    bufferOffset = _serializer.float32(obj.kp_lat_set, buffer, bufferOffset);
    // Serialize message field [kp_ang_set]
    bufferOffset = _serializer.float32(obj.kp_ang_set, buffer, bufferOffset);
    // Serialize message field [ki_lon_set]
    bufferOffset = _serializer.float32(obj.ki_lon_set, buffer, bufferOffset);
    // Serialize message field [ki_lat_set]
    bufferOffset = _serializer.float32(obj.ki_lat_set, buffer, bufferOffset);
    // Serialize message field [ki_ang_set]
    bufferOffset = _serializer.float32(obj.ki_ang_set, buffer, bufferOffset);
    // Serialize message field [kd_lon_set]
    bufferOffset = _serializer.float32(obj.kd_lon_set, buffer, bufferOffset);
    // Serialize message field [kd_lat_set]
    bufferOffset = _serializer.float32(obj.kd_lat_set, buffer, bufferOffset);
    // Serialize message field [kd_ang_set]
    bufferOffset = _serializer.float32(obj.kd_ang_set, buffer, bufferOffset);
    // Serialize message field [lon_err]
    bufferOffset = _serializer.float32(obj.lon_err, buffer, bufferOffset);
    // Serialize message field [lat_err]
    bufferOffset = _serializer.float32(obj.lat_err, buffer, bufferOffset);
    // Serialize message field [ang_err]
    bufferOffset = _serializer.float32(obj.ang_err, buffer, bufferOffset);
    // Serialize message field [ang_speed]
    bufferOffset = _serializer.float32(obj.ang_speed, buffer, bufferOffset);
    // Serialize message field [lin_speed]
    bufferOffset = _serializer.float32(obj.lin_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PID
    let len;
    let data = new PID(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [kp_lon_set]
    data.kp_lon_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kp_lat_set]
    data.kp_lat_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kp_ang_set]
    data.kp_ang_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ki_lon_set]
    data.ki_lon_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ki_lat_set]
    data.ki_lat_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ki_ang_set]
    data.ki_ang_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kd_lon_set]
    data.kd_lon_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kd_lat_set]
    data.kd_lat_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kd_ang_set]
    data.kd_ang_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lon_err]
    data.lon_err = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_err]
    data.lat_err = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ang_err]
    data.ang_err = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ang_speed]
    data.ang_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lin_speed]
    data.lin_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ftc_local_planner/PID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74a052c94d631fd9361aebcb670b5e39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    
    # P set point
    float32 kp_lon_set
    float32 kp_lat_set
    float32 kp_ang_set
    
    # I set point
    float32 ki_lon_set
    float32 ki_lat_set
    float32 ki_ang_set
    
    # D set point
    float32 kd_lon_set
    float32 kd_lat_set
    float32 kd_ang_set
    
    # errors
    float32 lon_err
    float32 lat_err
    float32 ang_err
    
    # speeds
    float32 ang_speed
    float32 lin_speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PID(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.kp_lon_set !== undefined) {
      resolved.kp_lon_set = msg.kp_lon_set;
    }
    else {
      resolved.kp_lon_set = 0.0
    }

    if (msg.kp_lat_set !== undefined) {
      resolved.kp_lat_set = msg.kp_lat_set;
    }
    else {
      resolved.kp_lat_set = 0.0
    }

    if (msg.kp_ang_set !== undefined) {
      resolved.kp_ang_set = msg.kp_ang_set;
    }
    else {
      resolved.kp_ang_set = 0.0
    }

    if (msg.ki_lon_set !== undefined) {
      resolved.ki_lon_set = msg.ki_lon_set;
    }
    else {
      resolved.ki_lon_set = 0.0
    }

    if (msg.ki_lat_set !== undefined) {
      resolved.ki_lat_set = msg.ki_lat_set;
    }
    else {
      resolved.ki_lat_set = 0.0
    }

    if (msg.ki_ang_set !== undefined) {
      resolved.ki_ang_set = msg.ki_ang_set;
    }
    else {
      resolved.ki_ang_set = 0.0
    }

    if (msg.kd_lon_set !== undefined) {
      resolved.kd_lon_set = msg.kd_lon_set;
    }
    else {
      resolved.kd_lon_set = 0.0
    }

    if (msg.kd_lat_set !== undefined) {
      resolved.kd_lat_set = msg.kd_lat_set;
    }
    else {
      resolved.kd_lat_set = 0.0
    }

    if (msg.kd_ang_set !== undefined) {
      resolved.kd_ang_set = msg.kd_ang_set;
    }
    else {
      resolved.kd_ang_set = 0.0
    }

    if (msg.lon_err !== undefined) {
      resolved.lon_err = msg.lon_err;
    }
    else {
      resolved.lon_err = 0.0
    }

    if (msg.lat_err !== undefined) {
      resolved.lat_err = msg.lat_err;
    }
    else {
      resolved.lat_err = 0.0
    }

    if (msg.ang_err !== undefined) {
      resolved.ang_err = msg.ang_err;
    }
    else {
      resolved.ang_err = 0.0
    }

    if (msg.ang_speed !== undefined) {
      resolved.ang_speed = msg.ang_speed;
    }
    else {
      resolved.ang_speed = 0.0
    }

    if (msg.lin_speed !== undefined) {
      resolved.lin_speed = msg.lin_speed;
    }
    else {
      resolved.lin_speed = 0.0
    }

    return resolved;
    }
};

module.exports = PID;
