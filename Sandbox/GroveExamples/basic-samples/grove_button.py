# ---------- GROVE PUSH BUTTON ----------  #
# Basic sample using UPM module for the    #
# Grove push button v1.1                   #
# Daniela Plascencia | daplascen@gmail.com #

import pyupm_grove as g
from time import sleep

if __name__ == '__main__':

    bttn = g.GroveButton(4) # Instance the button and
                            # sets it in digital input 4

    # The status of the button is retrieved
    # and then printed on screeen
    while True:
        if bttn.value():
            print 'Button is pressed'
        else:
            print 'Button is not pressed'
        sleep(1.0)
