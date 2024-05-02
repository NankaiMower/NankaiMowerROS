// Auto-generated. Do not edit!

// (in-package xesc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class XescState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_state = null;
      this.fw_major = null;
      this.fw_minor = null;
      this.voltage_input = null;
      this.temperature_pcb = null;
      this.temperature_motor = null;
      this.current_input = null;
      this.duty_cycle = null;
      this.tacho = null;
      this.fault_code = null;
      this.tacho_absolute = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_state')) {
        this.connection_state = initObj.connection_state
      }
      else {
        this.connection_state = 0;
      }
      if (initObj.hasOwnProperty('fw_major')) {
        this.fw_major = initObj.fw_major
      }
      else {
        this.fw_major = 0;
      }
      if (initObj.hasOwnProperty('fw_minor')) {
        this.fw_minor = initObj.fw_minor
      }
      else {
        this.fw_minor = 0;
      }
      if (initObj.hasOwnProperty('voltage_input')) {
        this.voltage_input = initObj.voltage_input
      }
      else {
        this.voltage_input = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_pcb')) {
        this.temperature_pcb = initObj.temperature_pcb
      }
      else {
        this.temperature_pcb = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_motor')) {
        this.temperature_motor = initObj.temperature_motor
      }
      else {
        this.temperature_motor = 0.0;
      }
      if (initObj.hasOwnProperty('current_input')) {
        this.current_input = initObj.current_input
      }
      else {
        this.current_input = 0.0;
      }
      if (initObj.hasOwnProperty('duty_cycle')) {
        this.duty_cycle = initObj.duty_cycle
      }
      else {
        this.duty_cycle = 0.0;
      }
      if (initObj.hasOwnProperty('tacho')) {
        this.tacho = initObj.tacho
      }
      else {
        this.tacho = 0;
      }
      if (initObj.hasOwnProperty('fault_code')) {
        this.fault_code = initObj.fault_code
      }
      else {
        this.fault_code = 0;
      }
      if (initObj.hasOwnProperty('tacho_absolute')) {
        this.tacho_absolute = initObj.tacho_absolute
      }
      else {
        this.tacho_absolute = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XescState
    // Serialize message field [connection_state]
    bufferOffset = _serializer.uint8(obj.connection_state, buffer, bufferOffset);
    // Serialize message field [fw_major]
    bufferOffset = _serializer.uint8(obj.fw_major, buffer, bufferOffset);
    // Serialize message field [fw_minor]
    bufferOffset = _serializer.uint8(obj.fw_minor, buffer, bufferOffset);
    // Serialize message field [voltage_input]
    bufferOffset = _serializer.float64(obj.voltage_input, buffer, bufferOffset);
    // Serialize message field [temperature_pcb]
    bufferOffset = _serializer.float64(obj.temperature_pcb, buffer, bufferOffset);
    // Serialize message field [temperature_motor]
    bufferOffset = _serializer.float64(obj.temperature_motor, buffer, bufferOffset);
    // Serialize message field [current_input]
    bufferOffset = _serializer.float64(obj.current_input, buffer, bufferOffset);
    // Serialize message field [duty_cycle]
    bufferOffset = _serializer.float64(obj.duty_cycle, buffer, bufferOffset);
    // Serialize message field [tacho]
    bufferOffset = _serializer.uint32(obj.tacho, buffer, bufferOffset);
    // Serialize message field [fault_code]
    bufferOffset = _serializer.uint32(obj.fault_code, buffer, bufferOffset);
    // Serialize message field [tacho_absolute]
    bufferOffset = _serializer.uint32(obj.tacho_absolute, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XescState
    let len;
    let data = new XescState(null);
    // Deserialize message field [connection_state]
    data.connection_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fw_major]
    data.fw_major = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fw_minor]
    data.fw_minor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voltage_input]
    data.voltage_input = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature_pcb]
    data.temperature_pcb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature_motor]
    data.temperature_motor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_input]
    data.current_input = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duty_cycle]
    data.duty_cycle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tacho]
    data.tacho = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fault_code]
    data.fault_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tacho_absolute]
    data.tacho_absolute = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xesc_msgs/XescState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e52a8de7d3e288b9cd7995cffce72a93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # fault codes
    uint32 XESC_FAULT_UNINITIALIZED=1
    uint32 XESC_FAULT_WATCHDOG=2
    uint32 XESC_FAULT_UNDERVOLTAGE=4
    uint32 XESC_FAULT_OVERVOLTAGE=8
    uint32 XESC_FAULT_OVERCURRENT=16
    uint32 XESC_FAULT_OVERTEMP_MOTOR=32
    uint32 XESC_FAULT_OVERTEMP_PCB=64
    uint32 XESC_FAULT_INVALID_HALL=128
    
    # connection states
    uint8 XESC_CONNECTION_STATE_DISCONNECTED=0
    uint8 XESC_CONNECTION_STATE_WAITING_FOR_FW=1
    uint8 XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW=2
    uint8 XESC_CONNECTION_STATE_CONNECTED=3
    
    uint8   connection_state
    uint8   fw_major
    uint8   fw_minor
    float64 voltage_input        # input voltage (volt)
    float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)
    float64 temperature_motor    # temperature of connected motor (degrees Celsius)
    float64 current_input        # input current (ampere)
    float64 duty_cycle           # duty cycle (0 to 1)
    uint32 tacho                 # wheel ticks
    uint32   fault_code
    uint32 tacho_absolute        # wheel ticks absolute
    uint8 direction              # current direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XescState(null);
    if (msg.connection_state !== undefined) {
      resolved.connection_state = msg.connection_state;
    }
    else {
      resolved.connection_state = 0
    }

    if (msg.fw_major !== undefined) {
      resolved.fw_major = msg.fw_major;
    }
    else {
      resolved.fw_major = 0
    }

    if (msg.fw_minor !== undefined) {
      resolved.fw_minor = msg.fw_minor;
    }
    else {
      resolved.fw_minor = 0
    }

    if (msg.voltage_input !== undefined) {
      resolved.voltage_input = msg.voltage_input;
    }
    else {
      resolved.voltage_input = 0.0
    }

    if (msg.temperature_pcb !== undefined) {
      resolved.temperature_pcb = msg.temperature_pcb;
    }
    else {
      resolved.temperature_pcb = 0.0
    }

    if (msg.temperature_motor !== undefined) {
      resolved.temperature_motor = msg.temperature_motor;
    }
    else {
      resolved.temperature_motor = 0.0
    }

    if (msg.current_input !== undefined) {
      resolved.current_input = msg.current_input;
    }
    else {
      resolved.current_input = 0.0
    }

    if (msg.duty_cycle !== undefined) {
      resolved.duty_cycle = msg.duty_cycle;
    }
    else {
      resolved.duty_cycle = 0.0
    }

    if (msg.tacho !== undefined) {
      resolved.tacho = msg.tacho;
    }
    else {
      resolved.tacho = 0
    }

    if (msg.fault_code !== undefined) {
      resolved.fault_code = msg.fault_code;
    }
    else {
      resolved.fault_code = 0
    }

    if (msg.tacho_absolute !== undefined) {
      resolved.tacho_absolute = msg.tacho_absolute;
    }
    else {
      resolved.tacho_absolute = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

// Constants for message
XescState.Constants = {
  XESC_FAULT_UNINITIALIZED: 1,
  XESC_FAULT_WATCHDOG: 2,
  XESC_FAULT_UNDERVOLTAGE: 4,
  XESC_FAULT_OVERVOLTAGE: 8,
  XESC_FAULT_OVERCURRENT: 16,
  XESC_FAULT_OVERTEMP_MOTOR: 32,
  XESC_FAULT_OVERTEMP_PCB: 64,
  XESC_FAULT_INVALID_HALL: 128,
  XESC_CONNECTION_STATE_DISCONNECTED: 0,
  XESC_CONNECTION_STATE_WAITING_FOR_FW: 1,
  XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW: 2,
  XESC_CONNECTION_STATE_CONNECTED: 3,
}

module.exports = XescState;
