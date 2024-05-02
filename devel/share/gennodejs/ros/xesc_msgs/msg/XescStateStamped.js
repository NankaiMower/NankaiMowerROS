// Auto-generated. Do not edit!

// (in-package xesc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let XescState = require('./XescState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class XescStateStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new XescState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XescStateStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = XescState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XescStateStamped
    let len;
    let data = new XescStateStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = XescState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xesc_msgs/XescStateStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3021998c642e2ed9f8e4dc66b5fc2c57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header
    XescState state
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: xesc_msgs/XescState
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
    const resolved = new XescStateStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = XescState.Resolve(msg.state)
    }
    else {
      resolved.state = new XescState()
    }

    return resolved;
    }
};

module.exports = XescStateStamped;
