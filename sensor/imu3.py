import serial
imu=serial.Serial("/dev/ttyAMA0", 115200)
print(imu)

while True:
    data = imu.read_all()
    print(data)

imu.close()
