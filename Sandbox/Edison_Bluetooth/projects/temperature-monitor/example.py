#!/usr/bin/python

# ========== * IMPORT SECTION * ========== #

# UPM Modules
import pyupm_grove
import pyupm_servo

# BT Needed Modules
import spp

# ========= * CONSTANTS * ================ #

# Pins used in your Grove kit. Adjust for your led, servo, and sensor.
LED_PIN = 8
TEMP_PIN = 0
SERVO_PIN = 5

# Minimum and maximum safe angle for the servo.
MIN_ANGLE = 30
MAX_ANGLE = 150

# Temperature threshold for the alarm in Celsius degrees.
MAX_TEMP = 28

# ========= * SETTING UP GPIOS * ========= #
led = pyupm_grove.GroveLed(LED_PIN)
servo = pyupm_servo.ES08A(SERVO_PIN)
temp_sensor = pyupm_grove.GroveTemp(TEMP_PIN)

led_flag = False

# ========= * PROJECT FUNCTIONS * ======== #

# ------------ Temperature sensor -------- #
def temperatureFunction():
    """
        Read temperature, triggers the alarm, and adjusts servo's angle.
    """

    # Read temperature and trigger alarm if necessary
    global led_flag
    temp = getTemperature()
    if temp > MAX_TEMP:
        triggerAlarm()
    else:
        disableAlarm()

    # Adjust servo's angle
    angle = MIN_ANGLE + ((temp-20) * 6)
    angle = limitAngle(angle)
    servo.setAngle(angle)

    # Debugging
    #print("Temperature: %d C\nAngle: %d" % (temp, angle))

def getTemperature():
    """
        Returns temperature from sensor.
    """
    return int(temp_sensor.value())

def turnLedOff():
    """
        Turns led off.
    """

    global led_flag
    led.off()
    led_flag = False

def turnLedOn():
    """
        Turns led on.
    """

    global led_flag
    led.on()
    led_flag = True

def triggerAlarm():
    """
        Function will toogle led.
    """

    if led_flag:
        turnLedOff()
    else:
        turnLedOn()

def disableAlarm():
    """
        Function will turn the led off.
    """
    if led_flag:
        turnLedOff()

def limitAngle(angle):
    """
        Returns servo's angle within safe values.
    """

    if angle < MIN_ANGLE:
        return MIN_ANGLE
    elif angle > MAX_ANGLE:
        return MAX_ANGLE
    return angle

#-----------  BT Communication ----------- #

def function(data):
    """
        BT dependent case function.
    """
    # Selects the function to be used depending on BT commands.
    func = functionInUse.get(data, dummy)
    func()

#-------------  BT Functions ------------  #
def getStatus():
    """
        Prints status message in the screen.
    """
    print("=== Status ===\nTemperature: %d C\n" % getTemperature())

def requestData():
    """
        Request temperature via BT.
    """
    return str(getTemperature())

def dummy():
    """
        Dummy function as default for BT calling.
    """
    pass

# Sets which command corresponds to each BT controlled function.
functionInUse = {'get' : getStatus, }

# ------------ Project Program ----------- #
# Run all non-BT controlled functions
def myProgram():
    """
        Run these function until a BT event is triggered.
    """
    temperatureFunction()


# =========== * BT MAIN LOOP * =========== #
if __name__ == '__main__':
    spp.bluetoothConnection()
