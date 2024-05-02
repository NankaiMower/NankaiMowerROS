import smbus
import time
import RPi.GPIO as GPIO

kaiguan = 18
TSL2561_ADDR = 0x39
POWER_UP = 0x03
POWER_DOWN = 0x00
CONTROL_REG = 0x80
DATA0_LOW = 0x8c
DATA0_HIGH = 0x8d
DATA1_LOW = 0x8e
DATA1_HIGH = 0x8f

# threshold0_LOW = 0x8c
# threshold0_HIGH = 0x8d
# threshold1_LOW = 0x8e
# threshold1_HIGH = 0x8f

GPIO.setmode(GPIO.BCM)
GPIO.setup(kaiguan, GPIO.OUT)
bus_number = 1
bus = smbus.SMBus(bus_number)
bus.write_byte_data(TSL2561_ADDR, CONTROL_REG, POWER_UP)
time.sleep(1.2)
def read_register(address, register):
    return bus.read_byte_data(address, register)

time.sleep(0.5)

def read_lux(fd,x1,y1,x2,y2):
    ##Read the values from Ch,Dh,Eh,Fh
    data0_low = read_register(fd,x1)

    data0_high = read_register(fd,y1)

    data1_low = read_register(fd,x2)

    data1_high = read_register(fd,y2)

    ##Convert the register values into sampling values(channel_0 & channel_1)
    chn0 = 256 * data0_high + data0_low
    chn1 = 256 * data1_high + data1_low

    ##According to the 'div', calculate the size of lux
    lux=0
    if chn0 == 0:
        lux = 0
    elif chn0 != 0:
        div = float(chn1) / float(chn0)
        if (div > 0 and div <= 0.5):
            lux = (0.304 * chn0 - 0.062 * chn0 * (div ** 1.4))
        if (div > 0.5 and div <= 0.61):
            lux = (0.0224 * chn0 - 0.031 * chn1)
        if (div > 0.61 and div <= 0.8):
            lux = (0.0128 * chn0 - 0.0153 * chn1)
        if (div > 0.8 and div <= 1.3):
            lux = (0.00146 * chn0 - 0.00112 * chn1)
        if (div > 1.3):
            lux = 0
    return lux


try:
    while True:
        light_lux = read_lux(TSL2561_ADDR, DATA0_LOW, DATA0_HIGH, DATA1_LOW, DATA1_HIGH)
        print(light_lux)
        if(light_lux>20):
            GPIO.output(kaiguan, False)
        else:
            GPIO.output(kaiguan, True)
        time.sleep(1)  # 

except KeyboardInterrupt:
    GPIO.cleanup()

# light_lux=read_lux(TSL2561_ADDR,DATA0_LOW,DATA0_HIGH,DATA1_LOW,DATA1_HIGH)
# print(light_lux)



