import serial
import time

right_motor_serial=serial.Serial('/dev/ttyAMA2', 115200)

print(right_motor_serial)

right_motor_serial.write(b'start\r\n')

time.sleep(1)

right_motor_serial.write(b'speed+\r\n')

time.sleep(2)

right_motor_serial.write(b'speed+\r\n')

time.sleep(2)

right_motor_serial.write(b'speed+\r\n')

time.sleep(2)


right_motor_serial.write(b'stop\r\n')

time.sleep(0.5)

right_motor_serial.write(b'speed-\r\n')

time.sleep(2)

right_motor_serial.write(b'speed-\r\n')

time.sleep(2)

right_motor_serial.write(b'speed-\r\n')

time.sleep(2)

right_motor_serial.write(b'speed-\r\n')

time.sleep(2)

right_motor_serial.write(b'speed-\r\n')

time.sleep(2)

right_motor_serial.write(b'stop\r\n')

time.sleep(0.5)

# while True:
#     response = right_motor_serial.read(100)
#     print(response.decode())

right_motor_serial.close()