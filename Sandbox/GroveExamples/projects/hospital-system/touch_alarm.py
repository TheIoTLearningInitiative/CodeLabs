#!/usr/bin/python
from threading import Timer

import pyupm_grove as grove
import pyupm_ttp223 as ttp

# Pins used in Grove kit.
EMERGENCY_BUTTON = 3
ALERT_LED = 4

# Alarm status.
ON = True
OFF = False
alarm_status_list = {ON: "on",
                     OFF: "off"}

# Succes code for Bluetooth commands.
SUCCESS_CODE = "OK"

# Initialize your devices.
alarm_led = grove.GroveLed(ALERT_LED)
emergency_button = ttp.TTP223(EMERGENCY_BUTTON)

# Initialize flags.
initialized = False
emergency_button_released = True
alarm_status = OFF


def toggleAlarm(alarmed):
    global alarm_status

    if alarmed:
        alarm_led.on()
        alarm_status = ON
    else:
        alarm_led.off()
        alarm_status = OFF


def checkButtonStatus():
    global emergency_button_released

    if emergency_button.value():
        if emergency_button_released:
            toggleAlarm(not alarm_status)
            # avoid input until button is released
            emergency_button_released = False
    else:
        # wait for new input
        emergency_button_released = True


def myProgram():
    checkButtonStatus()


if __name__ == "__main__":
    while True:
        myProgram()
