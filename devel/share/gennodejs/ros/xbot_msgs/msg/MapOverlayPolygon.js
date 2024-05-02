// Auto-generated. Do not edit!

// (in-package xbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MapOverlayPolygon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polygon = null;
      this.color = null;
      this.closed = null;
      this.line_width = null;
    }
    else {
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('closed')) {
        this.closed = initObj.closed
      }
      else {
        this.closed = false;
      }
      if (initObj.hasOwnProperty('line_width')) {
        this.line_width = initObj.line_width
      }
      else {
        this.line_width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapOverlayPolygon
    // Serialize message field [polygon]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.polygon, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [closed]
    bufferOffset = _serializer.bool(obj.closed, buffer, bufferOffset);
    // Serialize message field [line_width]
    bufferOffset = _serializer.float32(obj.line_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapOverlayPolygon
    let len;
    let data = new MapOverlayPolygon(null);
    // Deserialize message field [polygon]
    data.polygon = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [closed]
    data.closed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [line_width]
    data.line_width = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.Polygon.getMessageSize(object.polygon);
    length += _getByteLength(object.color);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/MapOverlayPolygon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '120b1776b75dc17ea7f8c81f08a7abe3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Polygon polygon
    string color
    bool closed
    float32 line_width
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapOverlayPolygon(null);
    if (msg.polygon !== undefined) {
      resolved.polygon = geometry_msgs.msg.Polygon.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new geometry_msgs.msg.Polygon()
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.closed !== undefined) {
      resolved.closed = msg.closed;
    }
    else {
      resolved.closed = false
    }

    if (msg.line_width !== undefined) {
      resolved.line_width = msg.line_width;
    }
    else {
      resolved.line_width = 0.0
    }

    return resolved;
    }
};

module.exports = MapOverlayPolygon;
