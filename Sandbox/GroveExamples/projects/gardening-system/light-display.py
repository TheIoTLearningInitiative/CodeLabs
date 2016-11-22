import pyupm_grove as g
import pyupm_i2clcd as lcd
from time import sleep

light = g.GroveLight(0)
display = lcd.Jhd1313m1(0, 0x3E, 0x62)

def displayLight():
    if light.value() <= 20:
        #print light.value()
        display.setColor(255,0,0)
    elif light.value() in range(21,29):
        #print light.value()
        display.setColor(255,255,0)
    elif light.value() >= 30:
        #print light.value()
        display.setColor(0,255,0)

if __name__ == '__main__':

    while True:
        displayLight()
        sleep(1.5)
