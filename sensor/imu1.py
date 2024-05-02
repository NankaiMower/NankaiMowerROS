import serial
import time
import numpy as np
from array import array

# 设置正确的串口参数------------------------
ser_port = "/dev/ttyAMA0"     #此处需要替换为对应使用的串口号，windows系统写成COMx，若是linux则要根据所用系统进行调整如写成/dev/ttyUSBx或/dev/ttySx
ser_baudrate = 115200 # 串口波特率

ser_timeout = 2 # 串口操作超时时间
# Open the serial port
ser = serial.Serial(ser_port, ser_baudrate, timeout=ser_timeout)


    
while True:
    print('1111')
    data = ser.read_all()
    print(data)
    print('2222')
    if data:
        rec_str = data.decode('utf-8')
        print(rec_str)


