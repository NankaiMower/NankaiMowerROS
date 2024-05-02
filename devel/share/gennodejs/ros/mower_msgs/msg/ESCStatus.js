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

class ESCStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.current = null;
      this.tacho = null;
      this.temperature_motor = null;
      this.temperature_pcb = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('tacho')) {
        this.tacho = initObj.tacho
      }
      else {
        this.tacho = 0;
      }
      if (initObj.hasOwnProperty('temperature_motor')) {
        this.temperature_motor = initObj.temperature_motor
      }
      else {
        this.temperature_motor = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_pcb')) {
        this.temperature_pcb = initObj.temperature_pcb
      }
      else {
        this.temperature_pcb = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ESCStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [tacho]
    bufferOffset = _serializer.uint32(obj.tacho, buffer, bufferOffset);
    // Serialize message field [temperature_motor]
    bufferOffset = _serializer.float32(obj.temperature_motor, buffer, bufferOffset);
    // Serialize message field [temperature_pcb]
    bufferOffset = _serializer.float32(obj.temperature_pcb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ESCStatus
    let len;
    let data = new ESCStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tacho]
    data.tacho = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [temperature_motor]
    data.temperature_motor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature_pcb]
    data.temperature_pcb = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mower_msgs/ESCStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '076a91f0c3f76fb0d32fd787c7167fec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ESCStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.tacho !== undefined) {
      resolved.tacho = msg.tacho;
    }
    else {
      resolved.tacho = 0
    }

    if (msg.temperature_motor !== undefined) {
      resolved.temperature_motor = msg.temperature_motor;
    }
    else {
      resolved.temperature_motor = 0.0
    }

    if (msg.temperature_pcb !== undefined) {
      resolved.temperature_pcb = msg.temperature_pcb;
    }
    else {
      resolved.temperature_pcb = 0.0
    }

    return resolved;
    }
};

// Constants for message
ESCStatus.Constants = {
  ESC_STATUS_DISCONNECTED: 99,
  ESC_STATUS_ERROR: 100,
  ESC_STATUS_STALLED: 150,
  ESC_STATUS_OK: 200,
  ESC_STATUS_RUNNING: 201,
}

module.exports = ESCStatus;
