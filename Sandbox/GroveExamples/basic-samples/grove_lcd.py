# ------------ GROVE LCD RGB ------------  #
# Basic sample using UPM module for the    #
# Grove LCD RGB v3.0                       #
# Daniela Plascencia | daplascen@gmail.com #

import pyupm_i2clcd as lcd
from time import sleep

def hello():

    display.clear()
    display.setColor(30,223,178)
    display.setCursor(0,2)
    display.write("Hello World!")

def goodbye():

    display.clear()
    display.setColor(255,51,51)
    display.setCursor(0,2)
    msg1 = "Goodbye Cruel"
    display.write(msg1)
    display.setCursor(1,5)
    msg2 = "World!"
    display.write(msg2)

if __name__ == '__main__':
    
    display = lcd.Jhd1313m1(0, 0x3E, 0x62)

    hello()
    sleep(1.5)
    goodbye()
    sleep(1.5)
