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

class SensorInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_id = null;
      this.sensor_name = null;
      this.value_type = null;
      this.value_description = null;
      this.unit = null;
      this.has_min_max = null;
      this.min_value = null;
      this.max_value = null;
      this.has_critical_low = null;
      this.lower_critical_value = null;
      this.has_critical_high = null;
      this.upper_critical_value = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = '';
      }
      if (initObj.hasOwnProperty('sensor_name')) {
        this.sensor_name = initObj.sensor_name
      }
      else {
        this.sensor_name = '';
      }
      if (initObj.hasOwnProperty('value_type')) {
        this.value_type = initObj.value_type
      }
      else {
        this.value_type = 0;
      }
      if (initObj.hasOwnProperty('value_description')) {
        this.value_description = initObj.value_description
      }
      else {
        this.value_description = 0;
      }
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('has_min_max')) {
        this.has_min_max = initObj.has_min_max
      }
      else {
        this.has_min_max = false;
      }
      if (initObj.hasOwnProperty('min_value')) {
        this.min_value = initObj.min_value
      }
      else {
        this.min_value = 0.0;
      }
      if (initObj.hasOwnProperty('max_value')) {
        this.max_value = initObj.max_value
      }
      else {
        this.max_value = 0.0;
      }
      if (initObj.hasOwnProperty('has_critical_low')) {
        this.has_critical_low = initObj.has_critical_low
      }
      else {
        this.has_critical_low = false;
      }
      if (initObj.hasOwnProperty('lower_critical_value')) {
        this.lower_critical_value = initObj.lower_critical_value
      }
      else {
        this.lower_critical_value = 0.0;
      }
      if (initObj.hasOwnProperty('has_critical_high')) {
        this.has_critical_high = initObj.has_critical_high
      }
      else {
        this.has_critical_high = false;
      }
      if (initObj.hasOwnProperty('upper_critical_value')) {
        this.upper_critical_value = initObj.upper_critical_value
      }
      else {
        this.upper_critical_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorInfo
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.string(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [sensor_name]
    bufferOffset = _serializer.string(obj.sensor_name, buffer, bufferOffset);
    // Serialize message field [value_type]
    bufferOffset = _serializer.uint8(obj.value_type, buffer, bufferOffset);
    // Serialize message field [value_description]
    bufferOffset = _serializer.uint8(obj.value_description, buffer, bufferOffset);
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [has_min_max]
    bufferOffset = _serializer.bool(obj.has_min_max, buffer, bufferOffset);
    // Serialize message field [min_value]
    bufferOffset = _serializer.float64(obj.min_value, buffer, bufferOffset);
    // Serialize message field [max_value]
    bufferOffset = _serializer.float64(obj.max_value, buffer, bufferOffset);
    // Serialize message field [has_critical_low]
    bufferOffset = _serializer.bool(obj.has_critical_low, buffer, bufferOffset);
    // Serialize message field [lower_critical_value]
    bufferOffset = _serializer.float64(obj.lower_critical_value, buffer, bufferOffset);
    // Serialize message field [has_critical_high]
    bufferOffset = _serializer.bool(obj.has_critical_high, buffer, bufferOffset);
    // Serialize message field [upper_critical_value]
    bufferOffset = _serializer.float64(obj.upper_critical_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorInfo
    let len;
    let data = new SensorInfo(null);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_name]
    data.sensor_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value_type]
    data.value_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value_description]
    data.value_description = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [has_min_max]
    data.has_min_max = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_value]
    data.min_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_value]
    data.max_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [has_critical_low]
    data.has_critical_low = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lower_critical_value]
    data.lower_critical_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [has_critical_high]
    data.has_critical_high = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upper_critical_value]
    data.upper_critical_value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sensor_id);
    length += _getByteLength(object.sensor_name);
    length += _getByteLength(object.unit);
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/SensorInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85f01359245544db1d778a444df1de31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # an enum showing from which type of data the sensor delivers
    uint8 TYPE_STRING=1
    uint8 TYPE_DOUBLE=2
    
    uint8 VALUE_DESCRIPTION_TEMPERATURE=1
    uint8 VALUE_DESCRIPTION_VELOCITY=2
    uint8 VALUE_DESCRIPTION_ACCELERATION=3
    uint8 VALUE_DESCRIPTION_VOLTAGE=4
    uint8 VALUE_DESCRIPTION_CURRENT=5
    uint8 VALUE_DESCRIPTION_PERCENT=6
    
    # Some flags to describe the GPS fix better
    uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied
    uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution
    uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution
    uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU
    
    uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)
    uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning
    
    string sensor_id
    string sensor_name                      # A human readable name for this sensor
    uint8 value_type                        # Data type of sensor data to expect. Useful for parsing
    uint8 value_description                 # Description of the value (e.g. Temperature, Speed), may be used to display different kinds of widgets to the user
    string unit                             # Unit of the sensor data (e.g. "V" or "m/s")
    bool has_min_max                        # True, if min_value and max_value are valid
    float64 min_value                       # Absolute sensor min (e.g. used for rendering a gauge)
    float64 max_value                       # Absolute sensor max (e.g. used for rendering a gauge)
    bool has_critical_low                   # True, if there's a lower bound that's considered critical and a user should be warned about
    float64 lower_critical_value            # Any value below this is considered critical
    bool has_critical_high                  # True, if there's an upper bound that's considered critical
    float64 upper_critical_value            # Any value above this is considered critical
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorInfo(null);
    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = ''
    }

    if (msg.sensor_name !== undefined) {
      resolved.sensor_name = msg.sensor_name;
    }
    else {
      resolved.sensor_name = ''
    }

    if (msg.value_type !== undefined) {
      resolved.value_type = msg.value_type;
    }
    else {
      resolved.value_type = 0
    }

    if (msg.value_description !== undefined) {
      resolved.value_description = msg.value_description;
    }
    else {
      resolved.value_description = 0
    }

    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.has_min_max !== undefined) {
      resolved.has_min_max = msg.has_min_max;
    }
    else {
      resolved.has_min_max = false
    }

    if (msg.min_value !== undefined) {
      resolved.min_value = msg.min_value;
    }
    else {
      resolved.min_value = 0.0
    }

    if (msg.max_value !== undefined) {
      resolved.max_value = msg.max_value;
    }
    else {
      resolved.max_value = 0.0
    }

    if (msg.has_critical_low !== undefined) {
      resolved.has_critical_low = msg.has_critical_low;
    }
    else {
      resolved.has_critical_low = false
    }

    if (msg.lower_critical_value !== undefined) {
      resolved.lower_critical_value = msg.lower_critical_value;
    }
    else {
      resolved.lower_critical_value = 0.0
    }

    if (msg.has_critical_high !== undefined) {
      resolved.has_critical_high = msg.has_critical_high;
    }
    else {
      resolved.has_critical_high = false
    }

    if (msg.upper_critical_value !== undefined) {
      resolved.upper_critical_value = msg.upper_critical_value;
    }
    else {
      resolved.upper_critical_value = 0.0
    }

    return resolved;
    }
};

// Constants for message
SensorInfo.Constants = {
  TYPE_STRING: 1,
  TYPE_DOUBLE: 2,
  VALUE_DESCRIPTION_TEMPERATURE: 1,
  VALUE_DESCRIPTION_VELOCITY: 2,
  VALUE_DESCRIPTION_ACCELERATION: 3,
  VALUE_DESCRIPTION_VOLTAGE: 4,
  VALUE_DESCRIPTION_CURRENT: 5,
  VALUE_DESCRIPTION_PERCENT: 6,
  FLAG_GPS_RTK: 1,
  FLAG_GPS_RTK_FIXED: 2,
  FLAG_GPS_RTK_FLOAT: 4,
  FLAG_GPS_DEAD_RECKONING: 8,
  FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE: 1,
  FLAG_SENSOR_FUSION_DEAD_RECKONING: 8,
}

module.exports = SensorInfo;
