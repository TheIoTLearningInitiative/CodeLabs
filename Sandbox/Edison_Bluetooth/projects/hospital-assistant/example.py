#!/usr/bin/python
from threading import Timer

import pyupm_grove as grove
import pyupm_i2clcd as lcd
import pyupm_ttp223 as ttp

# BT Needed Modules
import spp as spp

# Pins used in Grove kit.
PILL_BUTTON = 2
EMERGENCY_BUTTON = 3
ALERT_LED = 4

# Configuration values.
PILL_TIMER_LIMIT = 5    # in seconds
LCD_BACKGROUND_COLOR = (50, 50, 100)  # in RGB decimal values
LCD_BACKGROUND_ALERT_COLOR = (255, 0, 0)    # in RGB decimal values

# Alarm status.
ON = True
OFF = False
alarm_status_list = {ON: "on",
                     OFF: "off"}

# Succes code for Bluetooth commands.
SUCCESS_CODE = "OK"

# Initialize your devices.
display = lcd.Jhd1313m1(0, 0x3E, 0x62)
alarm_led = grove.GroveLed(ALERT_LED)
pill_button = grove.GroveButton(PILL_BUTTON)
emergency_button = ttp.TTP223(EMERGENCY_BUTTON)

# Initialize variables.
initialized = False
pill_counter = 0
pill_is_due = False
pill_button_released = True
emergency_button_released = True
alarm_status = OFF
timer = None


# -------------------------------------------------------------------------
# LCD Functions
# -------------------------------------------------------------------------
# The objective of functions in this section is to set the color and clear
# the LCD, and display the required messages to the user.
# -------------------------------------------------------------------------
def displayInit(color):
    display.setColor(*color)
    display.clear()


def displayMessage(message, line, pos=0):
    display.setCursor(line, pos)
    display.write(message)


def updateDisplay():
    if not pill_is_due:
        displayInit(LCD_BACKGROUND_COLOR)
    else:
        displayInit(LCD_BACKGROUND_ALERT_COLOR)
    displayMessage("Pills taken: %s" % str(pill_counter), 0, 0)
    if pill_is_due:
        displayMessage("*ADMINISTER PILL", 1, 0)
# -------------------------------------------------------------------------


# -------------------------------------------------------------------------
# Pill Administration Functions
# -------------------------------------------------------------------------
# In this code block there are the functions used to set and restart the
# timer for pill administration, and to increase or reset the administrated
# pill counter.
# -------------------------------------------------------------------------
def administerPill():
    global pill_counter
    pill_counter += 1
    setNextPillTimer()
    updateDisplay()
    return str(SUCCESS_CODE)


def resetPillCounter():
    global pill_counter
    pill_counter = 0
    setNextPillTimer()
    updateDisplay()
    return str(SUCCESS_CODE)


def setPillIsDue():
    global pill_is_due
    pill_is_due = True
    updateDisplay()


def setNextPillTimer():
    global pill_is_due
    global timer
    if timer:
        timer.cancel()
    timer = Timer(PILL_TIMER_LIMIT, setPillIsDue, ())
    timer.start()
    pill_is_due = False


def getPillCounter():
    return str(pill_counter)


def getPillIsDueState():
    return str(pill_is_due)
# -------------------------------------------------------------------------


# -------------------------------------------------------------------------
# Emergency Alarm Functions
# -------------------------------------------------------------------------
# These are the functions used to set and reset an emergency alarm, which
# is shown to the user by turning a LED on or off.
# -------------------------------------------------------------------------
def toggleAlarm(alarmed):
    global alarm_status

    if alarmed:
        alarm_led.on()
        alarm_status = ON
    else:
        alarm_led.off()
        alarm_status = OFF


def activateAlarm():
    toggleAlarm(ON)
    return str(SUCCESS_CODE)


def resetAlarm():
    toggleAlarm(OFF)
    return str(SUCCESS_CODE)


def getAlarmStatus():
    return alarm_status_list[alarm_status]
# -------------------------------------------------------------------------


# -------------------------------------------------------------------------
# Input Monitoring Functions
# -------------------------------------------------------------------------
# This section contains the function used to monitor the status of inputs,
# in this case the push button and the touch sensor, and execute
# the corresponding actions when their state changes.
# -------------------------------------------------------------------------
def checkButtonStatus():
    global pill_button_released
    global emergency_button_released

    if pill_button.value():
        if pill_button_released:
            administerPill()
            # avoid input until button is released
            pill_button_released = False
    else:
        # wait for new input
        pill_button_released = True

    if emergency_button.value():
        if emergency_button_released:
            toggleAlarm(ON)
            # avoid input until button is released
            emergency_button_released = False
    else:
        # wait for new input
        emergency_button_released = True
# -------------------------------------------------------------------------


# -------------------------------------------------------------------------
# Bluetooth Functions
# -------------------------------------------------------------------------
# These functions and function dictionary are used to dynamically execute
# different actions depending on the function ID received by Bluetooth.
# -------------------------------------------------------------------------
def callFunction(fnc_id):
    func = btFunctionList.get(fnc_id, returnError)
    return func()


def returnError():
    return "Error: Not valid code."


btFunctionList = {'a': administerPill,
                  'b': activateAlarm,
                  'c': resetPillCounter,
                  'd': resetAlarm,
                  'e': getPillCounter,
                  'f': getAlarmStatus,
                  'g': getPillIsDueState}
# -------------------------------------------------------------------------


# -------------------------------------------------------------------------
# Main Program Function
# -------------------------------------------------------------------------
# Finally, this is the main function that is executed continuously to
# check for input events, after triggering the timer and LCD
# initialization tasks.
# -------------------------------------------------------------------------
def myProgram():
    global initialized

    if not initialized:
        displayInit(LCD_BACKGROUND_COLOR)
        updateDisplay()
        setNextPillTimer()
        initialized = True

    checkButtonStatus()
# -------------------------------------------------------------------------


if __name__ == "__main__":
    spp.bluetoothConnection()
