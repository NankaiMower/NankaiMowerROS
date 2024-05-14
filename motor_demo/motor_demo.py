import serial
import time

right_motor_serial=serial.Serial('/dev/ttyAMA2', 115200)
print(right_motor_serial)
right_motor_serial.write(b'start\r\n')
print("start")
time.sleep(5)
right_motor_serial.write(b'speed+\r\n')
print("+")
time.sleep(5)
right_motor_serial.write(b'speed+\r\n')
print("+")
time.sleep(5)
right_motor_serial.write(b'stop\r\n')
print("stop")
right_motor_serial.close()