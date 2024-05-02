#!/usr/bin/python
# encoding:utf-8
import RPi.GPIO as GPIO
import time

get_rain =2
kaiguan = 18

GPIO.setmode(GPIO.BCM)

GPIO.setup(kaiguan, GPIO.OUT)
GPIO.setup(get_rain, GPIO.IN)

GPIO.output(kaiguan, False)
try:
    while True:
        status = GPIO.input(get_rain)
        print(status)
        if status:
            print("rain")
            GPIO.output(kaiguan, True)
        else:
            print("no rain")
            GPIO.output(kaiguan, False)
        time.sleep(0.5)
except KeyboardInterrupt:
    GPIO.output(kaiguan, False)
    GPIO.cleanup()
