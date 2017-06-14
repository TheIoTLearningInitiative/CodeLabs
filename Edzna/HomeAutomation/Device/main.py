#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time

from threading import Thread
from upm import pyupm_grove as grove

light = grove.GroveLight(0)

def functionSubscribeLightLampData(status):
    print "Light Lamp Data %s" % status

def functionSubscribeLightLampOn(mosq, obj, msg):
    print "Subscribe Light Lamp Data!"
    functionSubscribeLightLampData(msg.payload)

def functionSubscribeLightLamp():
    mqttclient = paho.Client()
    mqttclient.on_message = functionSubscribeLightLampOn
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    mqttclient.subscribe("edzna/8123/lamp/switch", 0)
    while mqttclient.loop() == 0:
        pass

def functionPublishSensorLuxesData():
    luxes = light.value()
    return luxes

def functionPublishSensorLuxesOn(mosq, obj, msg):
    print "Published Sensor Luxes Data!"

def functionPublishSensorLuxes():
    mqttclient = paho.Client()
    mqttclient.on_publish = functionPublishSensorLuxesOn
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    while True:
        data = functionPublishSensorLuxesData()
        topic = "edzna/8123/luxes"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    threadmqttsubscribe = Thread(target=functionSubscribeLightLamp)
    threadmqttsubscribe.start()

    threadmqttpublish = Thread(target=functionPublishSensorLuxes)
    threadmqttpublish.start()

    print "Hello Xcambo"

    while True:
        time.sleep(5)

# End of File
