import serial
import time
right_motor_serial=serial.Serial('/dev/ttyAMA2', 115200)
print(right_motor_serial)

right_motor_serial.write(b'stateshow\r\n')
time.sleep(1)

status = []
while True:
    try:
        data = right_motor_serial.readline().decode('utf-8')
    except:
        data = ""
    if data:
        rec_str = data.rstrip('\r\n')
        if ": " in rec_str:
            key, val = rec_str.split(": ")
            status.append((key,eval(val)))
            if key == "current_bus":
                for ss in status:
                    print(ss)
                print()
                time.sleep(0.01)
                status = []

right_motor_serial.close()

# \\
# 0\\
# 3\\
# power: 28.778318\\
# temp: -49.773346\\
# pcbtemp: 40.037018\\
# voltage: 15.802831\\
# voltage: 15.802831\\
# voltage: 15.752343\\
# current: 0.032848\\
# current: 0.032848\\
# current: 0.164240\\
# current_bus: 0.197088\\


# 充电电流
# 左ESC温度
# 右ESC温度
# 割草ESC温度
# 割草电机温度
# 电池电压
# 充电电压