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

def functionPublishSensorLuxesData():
    value = luxes.value()
    print "Publish Sensor Luxes Data: We got %s!" % value
    return value

def functionPublishSensorLuxes():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorLuxesData()
        topic = "cochinitapibil/achiote/sensor/luxes"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionPublishBinarySensorMotionData():
    value = motion.value()
    if value:
        value = 1
    else:
        value = 0
    print "Publish Binary Sensor Motion Data: We got %s!" % value
    return value

def functionPublishBinarySensorMotion():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishBinarySensorMotionData()
        topic = "cochinitapibil/achiote/binarysensor/motion"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionPublishBinarySensorOpeningData():
    value = opening.value()
    print "Publish Binary Sensor Opening Data: We got %s!" % value
    return value

def functionPublishBinarySensorOpening():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishBinarySensorOpeningData()
        topic = "cochinitapibil/achiote/binarysensor/opening"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionSubscribeSwitchData(mosq, obj, msg):
    print "Subscribe Actuator Data: We received %s!" % msg.payload
    if msg.payload == "1":
        switch.on()
    elif msg.payload == "0":
        switch.off()

def functionSubscribeSwitch():
    mqttclient = paho.Client()
    mqttclient.on_message = functionSubscribeSwitchData
    mqttclient.connect(mqttserver, mqttport, 60)
    mqttclient.subscribe("cochinitapibil/achiote/switch", 0)
    while mqttclient.loop() == 0:
        pass
        
def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    threadmqttpublishsensorluxes = Thread(target=functionPublishSensorLuxes)
    threadmqttpublishsensorluxes.start()

    threadmqttpublishbinarysensormotion = Thread(target=functionPublishBinarySensorMotion)
    threadmqttpublishbinarysensormotion.start()

    threadmqttpublishbinarysensoropening = Thread(target=functionPublishBinarySensorOpening)
    threadmqttpublishbinarysensoropening.start()

    threadmqttsubscribeswitch = Thread(target=functionSubscribeSwitch)
    threadmqttsubscribeswitch.start()

    print "IoT Solution Architect: From The Device To A Cloud Platform"

    while True:
        time.sleep(5)

# End of File
