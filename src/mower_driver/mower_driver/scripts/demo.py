import rospy
import serial
from xesc_msgs.msg import XescStateStamped

# 0  power: 24.335350
# 1  hallatimes: 836
# 2  motor_speed: 0.000000
# 3  pcbtemp: 32.416718
# 4  voltage: 24.133396
# 5  voltage: 24.082909
# 6  voltage: 24.133396
# 7  current: 0.000000
# 8  current: 0.000000
# 9  current: 0.000000
# 10 current_bus: 0.000000

def process(serial):

    voltage_input   = 0.0 # power
    temperature_pcb = 0.0 # pcbtemp
    current_input   = 0.0 # current_bus
    tacho_absolute  = 0.0 # hallatimes

    pub_info = XescStateStamped()
    while True:
        data = serial.readline().decode().rstrip("\r\n")
        if "power" in data:
            pub_info.state.voltage_input = float(data.split(": ")[-1])
            break

    for i in range(1, 11):
        data = serial.readline().decode().rstrip("\r\n")
        if i == 1:
            pub_info.state.tacho_absolute = int(data.split(": ")[-1])
        elif i == 2:
            duty_cycle = float(data.split(": ")[-1])
            pub_info.state.duty_cycle = duty_cycle
            pub_info.state.direction = 0 if duty_cycle >= 0 else 1
        elif i == 3:
            pub_info.state.temperature_pcb = float(data.split(": ")[-1])
        elif i == 10:
            pub_info.state.current_input = float(data.split(": ")[-1])
    
    pub_info.header.stamp = rospy.Time.now()
    return pub_info

if __name__ == "__main__":
    rospy.init_node("nankai_driver")

    left_motor_serial  = serial.Serial('/dev/ttyAMA4', 115200)
    left_motor_serial.write(b'stateshow\r\n')

    right_motor_serial  = serial.Serial('/dev/ttyAMA2', 115200)
    right_motor_serial.write(b'stateshow\r\n')

    driver_left_pub = rospy.Publisher("nankai_driver/left",XescStateStamped,queue_size=10)
    driver_right_pub = rospy.Publisher("nankai_driver/right",XescStateStamped,queue_size=10)
    
    rate = rospy.Rate(100)

    while not rospy.is_shutdown():
        try:
            driver_left_info = process(left_motor_serial)
            driver_right_info = process(right_motor_serial)
            driver_left_pub.publish(driver_left_info)
            driver_right_pub.publish(driver_right_info)
            rate.sleep()
        except:
            pass

# python src/mower_driver/mower_driver/scripts/demo.py
# rostopic echo nankai_driver/left -c
# rostopic echo nankai_driver/right -c


