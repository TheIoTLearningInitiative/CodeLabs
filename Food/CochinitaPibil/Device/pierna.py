#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time

from threading import Thread
from upm import pyupm_grove as grove
from upm import pyupm_biss0001 as grovemotion

luxes = grove.GroveLight(0)
motion = grovemotion.BISS0001(6)
opening = grove.GroveButton(4)
switch = grove.GroveRelay(2)

mqttserver = "iot.eclipse.org"
mqttport = 1883

# Sensor Luxes

def functionSensorLuxesData():
    value = luxes.value()
    print "Publish Sensor Luxes Data: We got %s!" % value
    return value

def functionSensorLuxes():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionSensorLuxesData()
        topic = "cochinitapibil/pierna/sensor/luxes"
        mqttclient.publish(topic, data)
        time.sleep(1)

# Binary Sensor Motion
        
def functionBinarySensorMotionData():
    value = motion.value()
    if value:
        value = 1
    else:
        value = 0
    print "Publish Binary Sensor Motion Data: We got %s!" % value
    return value

def functionBinarySensorMotion():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionBinarySensorMotionData()
        topic = "cochinitapibil/pierna/binarysensor/motion"
        mqttclient.publish(topic, data)
        time.sleep(1)

# Binary Sensor Opening

def functionBinarySensorOpeningData():
    value = opening.value()
    print "Publish Binary Sensor Opening Data: We got %s!" % value
    return value

def functionBinarySensorOpening():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionBinarySensorOpeningData()
        topic = "cochinitapibil/pierna/binarysensor/opening"
        mqttclient.publish(topic, data)
        time.sleep(1)

# Switch

def functionSwitchData(mosq, obj, msg):
    print "Subscribe Actuator Data: We received %s!" % msg.payload
    if msg.payload == "1":
        switch.on()
    elif msg.payload == "0":
        switch.off()

def functionSwitch():
    mqttclient = paho.Client()
    mqttclient.on_message = functionSwitchData
    mqttclient.connect(mqttserver, mqttport, 60)
    mqttclient.subscribe("cochinitapibil/pierna/switch", 0)
    while mqttclient.loop() == 0:
        pass
        
def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    sensorluxes = Thread(target=functionSensorLuxes)
    sensorluxes.start()

    binarysensormotion = Thread(target=functionBinarySensorMotion)
    binarysensormotion.start()

    binarysensoropening = Thread(target=functionBinarySensorOpening)
    binarysensoropening.start()

    switch = Thread(target=functionSwitch)
    switch.start()

    print "IoT Solution Architect: From The Device To A Cloud Platform"

    while True:
        time.sleep(5)

# End of File
