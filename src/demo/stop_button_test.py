import RPi.GPIO as GPIO
import time

# 使用BCM编号方式
GPIO.setmode(GPIO.BCM)

# 定义GPIO引脚
pin = 20
led = 18

GPIO.setup(pin, GPIO.IN)
GPIO.setup(led, GPIO.OUT)

try:
    while True:
        v = GPIO.input(pin)
        print(v)
        time.sleep(0.1) 
        if v == 1:
            GPIO.output(led, GPIO.LOW)
        else:
            GPIO.output(led, GPIO.HIGH)
except KeyboardInterrupt:
    print("程序已停止")

# 清理GPIO设置
finally:
    GPIO.cleanup()
