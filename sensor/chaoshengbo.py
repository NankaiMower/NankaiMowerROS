import RPi.GPIO as GPIO
import time

# 设置GPIO引脚
TRIG = 26
ECHO = 27
kaiguan = 18

# 初始化GPIO设置
GPIO.setmode(GPIO.BCM)
GPIO.setup(kaiguan, GPIO.OUT)
GPIO.setup(TRIG, GPIO.OUT)
GPIO.setup(ECHO, GPIO.IN)

try:
    while True:
        # 发送超声波脉冲
        GPIO.output(TRIG, False)
        time.sleep(1)  # 等待2秒，确保传感器稳定
        GPIO.output(TRIG, True)
        time.sleep(0.00001)
        GPIO.output(TRIG, False)

        # 接收超声波回波
        while GPIO.input(ECHO) == 0:
            pulse_start = time.time()
        while GPIO.input(ECHO) == 1:
            pulse_end = time.time()

        # 计算距离
        pulse_duration = pulse_end - pulse_start
        distance = pulse_duration * 34300 / 2  # 声音速度为34300厘米/秒

        # 打印测得的距离
        print("distance: %.2f cm" % distance)

        if distance < 10:
            GPIO.output(kaiguan, True)
        else:
            GPIO.output(kaiguan, False)

        # time.sleep(0.1)  # 等待1秒再进行下一次测量

except KeyboardInterrupt:
    # 当按下Ctrl+C时，退出程序并清理GPIO设置
    GPIO.cleanup()
