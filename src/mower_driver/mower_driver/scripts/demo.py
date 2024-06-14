import rospy
import serial

left_motor_serial  = serial.Serial('/dev/ttyAMA4', 115200)
left_motor_serial.write(b'stateshow\r\n')

right_motor_serial  = serial.Serial('/dev/ttyAMA2', 115200)
right_motor_serial.write(b'stateshow\r\n')

while not rospy.is_shutdown():
    left_data = left_motor_serial.readline().decode().rstrip("\r\n")
    right_data = right_motor_serial.readline().decode().rstrip("\r\n")
    if "hallatimes" in left_data:
        print("left   ",  left_data)
    if "hallatimes" in right_data:
        print("rigth  ", right_data)

# python src/mower_driver/mower_driver/scripts/demo.py