import RPi.GPIO as GPIO
import time

# 设置GPIO引脚
TRIG = 26
ECHO = 27

# 初始化GPIO设置
GPIO.setmode(GPIO.BCM)
GPIO.setup(TRIG, GPIO.OUT)
GPIO.setup(ECHO, GPIO.IN)

def calculate_distance():
    # 发送超声波脉冲
    GPIO.output(TRIG, True)
    time.sleep(0.0001)
    GPIO.output(TRIG, False)

    # 接收超声波回波
    while GPIO.input(ECHO) == 0:
        pass
    pulse_start = time.time()
    while GPIO.input(ECHO) == 1:
        pass
    pulse_end = time.time()

    # 计算距离
    pulse_duration = pulse_end - pulse_start
    distance = pulse_duration * 34300 / 2  # 声音速度为34300厘米/秒

    distance = round(distance, 2)

    # rospy.loginfo(f"Got new global plan with {distance} points.");

    return distance

if __name__ == '__main__':

    # 循环调用回调函数
    while True:
        distance = calculate_distance()
        print(distance)
        time.sleep(0.05)

# python ./src/mower_sensor/scripts/demo.py