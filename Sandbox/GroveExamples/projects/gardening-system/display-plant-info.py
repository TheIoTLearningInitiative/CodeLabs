import pyupm_i2clcd as lcd
import pyupm_grove as g
from time import sleep

light = g.GroveLight(0)
display = lcd.Jhd1313m1(0, 0x3E, 0x62)
already_watered = 0 
 
def displayLightInfo():
    display.setCursor(0,0)
    display.write('Light:%s' % str(light.value()))
    sleep(1)

def displayWateringInfo(watering, already_watered):
    display.setCursor(1,0)
    if watering:
        display.write('Watering')
    else:
        if already_watered == 0:
            display.write('Watered:NO')
        elif already_watered:
            display.write('Watered:YES')

if __name__ == '__main__':
    display.clear()
    while True:
        displayLightInfo()
        displayWateringInfo(watering, already_watered)
