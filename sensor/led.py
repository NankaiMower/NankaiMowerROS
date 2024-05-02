import RPi.GPIO as GPIO
import time

# 设置GPIO引脚
kaiguan = 18

# 初始化GPIO设置
GPIO.setmode(GPIO.BCM)
GPIO.setup(kaiguan, GPIO.OUT)

try:
    while True:
        # 发送超声波脉冲
        GPIO.output(kaiguan, False)
        print("关灯")
        time.sleep(2)  # 等待2秒，确保传感器稳定
        GPIO.output(kaiguan, True)
        print("kaideng")
        time.sleep(2)  # 等待1秒再进行下一次测量

except KeyboardInterrupt:
    # 当按下Ctrl+C时，退出程序并清理GPIO设置
    GPIO.cleanup()
