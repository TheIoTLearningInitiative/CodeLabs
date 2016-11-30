#!/usr/bin/python

# http://iotdk.intel.com/docs/master/upm/classupm_1_1_grove_button.html
# http://iotdk.intel.com/docs/master/upm/classupm_1_1_grove_relay.html

import os
import time

from threading import Thread
from upm import pyupm_grove as grove

curtainup = grove.GroveRelay(2)
curtaindown = grove.GroveRelay(3)
sensorup = grove.GroveButton(8)
sensordown = grove.GroveButton(7)
commandup = grove.GroveButton(6)
commanddown = grove.GroveButton(5)
curtainstatus = 'Stopped'

def SystemStatus():

    while True:
        #os.system('clear')
        print 'Curtain     Up: ' + str(curtainup.isOn())
        print 'Curtain   Down: ' + str(curtaindown.isOn())
        print 'Sensor      Up: ' + str(sensorup.value())
        print 'Sensor    Down: ' + str(sensordown.value())
        print ''
        print 'Curtain Status: ' + curtainstatus
        time.sleep(.5)

if __name__ == '__main__':

    systemstatus = Thread(target=SystemStatus)
    systemstatus.start()

    while True:

        if commandup.value():
             curtainstatus = 'Going Up'
             while not sensorup.value():
                 curtainup.on()
             curtainup.off()
             curtainstatus = 'Stopped'

        if commanddown.value():
             curtainstatus = 'Going Down'
             while not sensordown.value():
                 curtaindown.on()
             curtaindown.off()
             curtainstatus = 'Stopped'

        time.sleep(1)

# End of File
