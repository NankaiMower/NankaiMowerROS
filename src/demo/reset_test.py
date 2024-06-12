import RPi.GPIO as GPIO
import time

# 使用BCM编号方式
GPIO.setmode(GPIO.BCM)

# 定义GPIO引脚
pin = 23

# 设置GPIO引脚为输出模式
GPIO.setup(pin, GPIO.OUT)

# 函数：将GPIO引脚设置为高电平（1）
def set_high(pin):
    GPIO.output(pin, GPIO.HIGH)
    print(f"GPIO {pin} is set to HIGH")

# 函数：将GPIO引脚设置为低电平（0）
def set_low(pin):
    GPIO.output(pin, GPIO.LOW)
    print(f"GPIO {pin} is set to LOW")

# 示例：循环切换引脚状态
try:
    set_high(pin)
    time.sleep(0.1)  # 等待1秒
    set_low(pin)
except KeyboardInterrupt:
    print("程序已停止")

# 清理GPIO设置
finally:
    GPIO.cleanup()
