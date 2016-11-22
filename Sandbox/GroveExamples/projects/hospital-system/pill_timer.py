#!/usr/bin/python
from threading import Timer

import pyupm_grove as grove
import pyupm_i2clcd as lcd

# Pins used in Grove kit.
PILL_BUTTON = 2

# Response codes.
SUCCESS_CODE = "OK"

# Configuration values.
PILL_TIMER_LIMIT = 5    # in seconds
LCD_BACKGROUND_COLOR = (50, 50, 100)  # in RGB decimal values
LCD_BACKGROUND_ALERT_COLOR = (255, 0, 0)    # in RGB decimal values

# Initialize your devices.
display = lcd.Jhd1313m1(0, 0x3E, 0x62)
pill_button = grove.GroveButton(PILL_BUTTON)

# Initialize flags.
initialized = False
pill_counter = 0
pill_is_due = False
pill_button_released = True

# Initialize variables.
timer = None


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


def administerPill():
    global pill_counter
    pill_counter += 1
    setNextPillTimer()
    updateDisplay()
    return str(SUCCESS_CODE)


def resetCounter():
    global pill_counter
    pill_counter = 0
    setNextPillTimer()
    updateDisplay()
    return str(SUCCESS_CODE)


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


def myProgram():
    global initialized

    if not initialized:
        displayInit(LCD_BACKGROUND_COLOR)
        updateDisplay()
        setNextPillTimer()
        initialized = True

    checkButtonStatus()


if __name__ == "__main__":
    while True:
        myProgram()
