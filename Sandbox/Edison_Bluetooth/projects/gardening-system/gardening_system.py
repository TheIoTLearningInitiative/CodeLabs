#!/usr/bin/python

# ========== * IMPORT SECTION * ========== #

# UPM Modules
import pyupm_i2clcd as lcd
import pyupm_grove as g

from time import sleep

# BT Needed Modules
import spp as s

# ========= * SETTING UP GPIOS * ========= #
light = g.GroveLight(0)                 # Light sensor is connected to slot A0
display = lcd.Jhd1313m1(0, 0x3E, 0x62)  # LCD goes on any I2C slot

# ========= * PROJECT FUNCTIONS * ======== #

# ------------ LCD Functions ------------- #

# Display light sensor data
def displayLightInfo():
    display.clear()                 # Clear LCD
    display.setCursor(0,0)          # Set LCD cursor position (top left corner)
    display.write('Light:%s' % str(light.value()))  # Display light sensor data
    sleep(1)

#-------------  BT Functions -------------  #
    
# Request light sensor data via BT
def requestData():
    return str(light.value())     # Returns light sensor data

#-----------  BT Communication ------------ #

# BT dependent case function
def function (data):
    func = functionInUse.get(data, dummy) # Selects the function to be used
    func()                                # depending on BT commands

def dummy(): # If a character that's not defined in 'functionInUse'
    pass     # is sent to the system via BT, it won't do a thing

functionInUse = {'a' : requestData,}    # Sets which letter corresponds
                                        # to each BT controlled function

# ------------ Project Program ------------ #
# Run all non-BT controlled functions
def myProgram():
      displayLightInfo()     # Run these functions until a BT event is triggered

# =========== * BT MAIN LOOP * ============ #
if __name__ == '__main__':
    s.bluetoothConnection() # Enables BT connectivity
