// Auto-generated. Do not edit!

// (in-package mower_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ESCStatus = require('./ESCStatus.js');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.mower_status = null;
      this.raspberry_pi_power = null;
      this.gps_power = null;
      this.esc_power = null;
      this.rain_detected = null;
      this.sound_module_available = null;
      this.sound_module_busy = null;
      this.ui_board_available = null;
      this.ultrasonic_ranges = null;
      this.emergency = null;
      this.v_charge = null;
      this.v_battery = null;
      this.charge_current = null;
      this.left_esc_status = null;
      this.right_esc_status = null;
      this.mow_esc_status = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('mower_status')) {
        this.mower_status = initObj.mower_status
      }
      else {
        this.mower_status = 0;
      }
      if (initObj.hasOwnProperty('raspberry_pi_power')) {
        this.raspberry_pi_power = initObj.raspberry_pi_power
      }
      else {
        this.raspberry_pi_power = false;
      }
      if (initObj.hasOwnProperty('gps_power')) {
        this.gps_power = initObj.gps_power
      }
      else {
        this.gps_power = false;
      }
      if (initObj.hasOwnProperty('esc_power')) {
        this.esc_power = initObj.esc_power
      }
      else {
        this.esc_power = false;
      }
      if (initObj.hasOwnProperty('rain_detected')) {
        this.rain_detected = initObj.rain_detected
      }
      else {
        this.rain_detected = false;
      }
      if (initObj.hasOwnProperty('sound_module_available')) {
        this.sound_module_available = initObj.sound_module_available
      }
      else {
        this.sound_module_available = false;
      }
      if (initObj.hasOwnProperty('sound_module_busy')) {
        this.sound_module_busy = initObj.sound_module_busy
      }
      else {
        this.sound_module_busy = false;
      }
      if (initObj.hasOwnProperty('ui_board_available')) {
        this.ui_board_available = initObj.ui_board_available
      }
      else {
        this.ui_board_available = false;
      }
      if (initObj.hasOwnProperty('ultrasonic_ranges')) {
        this.ultrasonic_ranges = initObj.ultrasonic_ranges
      }
      else {
        this.ultrasonic_ranges = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = false;
      }
      if (initObj.hasOwnProperty('v_charge')) {
        this.v_charge = initObj.v_charge
      }
      else {
        this.v_charge = 0.0;
      }
      if (initObj.hasOwnProperty('v_battery')) {
        this.v_battery = initObj.v_battery
      }
      else {
        this.v_battery = 0.0;
      }
      if (initObj.hasOwnProperty('charge_current')) {
        this.charge_current = initObj.charge_current
      }
      else {
        this.charge_current = 0.0;
      }
      if (initObj.hasOwnProperty('left_esc_status')) {
        this.left_esc_status = initObj.left_esc_status
      }
      else {
        this.left_esc_status = new ESCStatus();
      }
      if (initObj.hasOwnProperty('right_esc_status')) {
        this.right_esc_status = initObj.right_esc_status
      }
      else {
        this.right_esc_status = new ESCStatus();
      }
      if (initObj.hasOwnProperty('mow_esc_status')) {
        this.mow_esc_status = initObj.mow_esc_status
      }
      else {
        this.mow_esc_status = new ESCStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [mower_status]
    bufferOffset = _serializer.uint8(obj.mower_status, buffer, bufferOffset);
    // Serialize message field [raspberry_pi_power]
    bufferOffset = _serializer.bool(obj.raspberry_pi_power, buffer, bufferOffset);
    // Serialize message field [gps_power]
    bufferOffset = _serializer.bool(obj.gps_power, buffer, bufferOffset);
    // Serialize message field [esc_power]
    bufferOffset = _serializer.bool(obj.esc_power, buffer, bufferOffset);
    // Serialize message field [rain_detected]
    bufferOffset = _serializer.bool(obj.rain_detected, buffer, bufferOffset);
    // Serialize message field [sound_module_available]
    bufferOffset = _serializer.bool(obj.sound_module_available, buffer, bufferOffset);
    // Serialize message field [sound_module_busy]
    bufferOffset = _serializer.bool(obj.sound_module_busy, buffer, bufferOffset);
    // Serialize message field [ui_board_available]
    bufferOffset = _serializer.bool(obj.ui_board_available, buffer, bufferOffset);
    // Check that the constant length array field [ultrasonic_ranges] has the right length
    if (obj.ultrasonic_ranges.length !== 5) {
      throw new Error('Unable to serialize array field ultrasonic_ranges - length must be 5')
    }
    // Serialize message field [ultrasonic_ranges]
    bufferOffset = _arraySerializer.float32(obj.ultrasonic_ranges, buffer, bufferOffset, 5);
    // Serialize message field [emergency]
    bufferOffset = _serializer.bool(obj.emergency, buffer, bufferOffset);
    // Serialize message field [v_charge]
    bufferOffset = _serializer.float32(obj.v_charge, buffer, bufferOffset);
    // Serialize message field [v_battery]
    bufferOffset = _serializer.float32(obj.v_battery, buffer, bufferOffset);
    // Serialize message field [charge_current]
    bufferOffset = _serializer.float32(obj.charge_current, buffer, bufferOffset);
    // Serialize message field [left_esc_status]
    bufferOffset = ESCStatus.serialize(obj.left_esc_status, buffer, bufferOffset);
    // Serialize message field [right_esc_status]
    bufferOffset = ESCStatus.serialize(obj.right_esc_status, buffer, bufferOffset);
    // Serialize message field [mow_esc_status]
    bufferOffset = ESCStatus.serialize(obj.mow_esc_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [mower_status]
    data.mower_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [raspberry_pi_power]
    data.raspberry_pi_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_power]
    data.gps_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [esc_power]
    data.esc_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rain_detected]
    data.rain_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sound_module_available]
    data.sound_module_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sound_module_busy]
    data.sound_module_busy = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ui_board_available]
    data.ui_board_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ultrasonic_ranges]
    data.ultrasonic_ranges = _arrayDeserializer.float32(buffer, bufferOffset, 5)
    // Deserialize message field [emergency]
    data.emergency = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [v_charge]
    data.v_charge = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_battery]
    data.v_battery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [charge_current]
    data.charge_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_esc_status]
    data.left_esc_status = ESCStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_esc_status]
    data.right_esc_status = ESCStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [mow_esc_status]
    data.mow_esc_status = ESCStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mower_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33cd1b298baa54308c3c9343754a34fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MOWER_STATUS_INITIALIZING=0
    uint8 MOWER_STATUS_OK=255
    
    
    
    time stamp
    # Low level stuff
    # Initialized or not
    uint8 mower_status
    bool raspberry_pi_power
    bool gps_power
    bool esc_power
    bool rain_detected
    bool sound_module_available
    bool sound_module_busy
    bool ui_board_available
    float32[5] ultrasonic_ranges
    bool emergency
    float32 v_charge
    float32 v_battery
    float32 charge_current
    
    # ESC stuff
    ESCStatus left_esc_status
    ESCStatus right_esc_status
    ESCStatus mow_esc_status
    
    
    ================================================================================
    MSG: mower_msgs/ESCStatus
    uint8 ESC_STATUS_DISCONNECTED=99
    uint8 ESC_STATUS_ERROR=100
    uint8 ESC_STATUS_STALLED=150
    uint8 ESC_STATUS_OK=200
    uint8 ESC_STATUS_RUNNING=201
    
    uint8 status
    float32 current
    uint32 tacho
    float32 temperature_motor
    float32 temperature_pcb
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.mower_status !== undefined) {
      resolved.mower_status = msg.mower_status;
    }
    else {
      resolved.mower_status = 0
    }

    if (msg.raspberry_pi_power !== undefined) {
      resolved.raspberry_pi_power = msg.raspberry_pi_power;
    }
    else {
      resolved.raspberry_pi_power = false
    }

    if (msg.gps_power !== undefined) {
      resolved.gps_power = msg.gps_power;
    }
    else {
      resolved.gps_power = false
    }

    if (msg.esc_power !== undefined) {
      resolved.esc_power = msg.esc_power;
    }
    else {
      resolved.esc_power = false
    }

    if (msg.rain_detected !== undefined) {
      resolved.rain_detected = msg.rain_detected;
    }
    else {
      resolved.rain_detected = false
    }

    if (msg.sound_module_available !== undefined) {
      resolved.sound_module_available = msg.sound_module_available;
    }
    else {
      resolved.sound_module_available = false
    }

    if (msg.sound_module_busy !== undefined) {
      resolved.sound_module_busy = msg.sound_module_busy;
    }
    else {
      resolved.sound_module_busy = false
    }

    if (msg.ui_board_available !== undefined) {
      resolved.ui_board_available = msg.ui_board_available;
    }
    else {
      resolved.ui_board_available = false
    }

    if (msg.ultrasonic_ranges !== undefined) {
      resolved.ultrasonic_ranges = msg.ultrasonic_ranges;
    }
    else {
      resolved.ultrasonic_ranges = new Array(5).fill(0)
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = false
    }

    if (msg.v_charge !== undefined) {
      resolved.v_charge = msg.v_charge;
    }
    else {
      resolved.v_charge = 0.0
    }

    if (msg.v_battery !== undefined) {
      resolved.v_battery = msg.v_battery;
    }
    else {
      resolved.v_battery = 0.0
    }

    if (msg.charge_current !== undefined) {
      resolved.charge_current = msg.charge_current;
    }
    else {
      resolved.charge_current = 0.0
    }

    if (msg.left_esc_status !== undefined) {
      resolved.left_esc_status = ESCStatus.Resolve(msg.left_esc_status)
    }
    else {
      resolved.left_esc_status = new ESCStatus()
    }

    if (msg.right_esc_status !== undefined) {
      resolved.right_esc_status = ESCStatus.Resolve(msg.right_esc_status)
    }
    else {
      resolved.right_esc_status = new ESCStatus()
    }

    if (msg.mow_esc_status !== undefined) {
      resolved.mow_esc_status = ESCStatus.Resolve(msg.mow_esc_status)
    }
    else {
      resolved.mow_esc_status = new ESCStatus()
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  MOWER_STATUS_INITIALIZING: 0,
  MOWER_STATUS_OK: 255,
}

module.exports = Status;
