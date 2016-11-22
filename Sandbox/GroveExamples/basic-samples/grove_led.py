import pyupm_grove as g
from time import sleep

if __name__ == '__main__':

    led = g.GroveLed(4)

    led.on()
    sleep(1.5)
    led.off()
    sleep(1.5)
