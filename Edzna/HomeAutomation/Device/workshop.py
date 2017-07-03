#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time

from threading import Thread
from upm import pyupm_grove as grove

light = grove.GroveLight(0)
relay = grove.GroveRelay(2)

mqttserver = "iot.eclipse.org"
mqttport = 1883

def functionSubscribeLightLampData(status):
    print "Light Lamp Data %s" % status

def functionSubscribeLightLampOn(mosq, obj, msg):
    print "Subscribe Light Lamp Data!"
    if msg.payload == "ON":
        relay.on()
    elif msg.payload == "OFF":
        relay.off()    
    functionSubscribeLightLampData(msg.payload)

def functionSubscribeLightLamp():
    mqttclient = paho.Client()
    mqttclient.on_message = functionSubscribeLightLampOn
    mqttclient.connect(mqttserver, mqttport, 60)
    mqttclient.subscribe("edzna/8123/lamp/switch", 0)
    while mqttclient.loop() == 0:
        pass

def functionPublishSensorLuxesData():
    luxes = light.value()
    print "Sensor Luxes Data %s" % luxes
    return luxes

def functionPublishSensorLuxesOn(mosq, obj, msg):
    print "Publish Sensor Luxes Data!"

def functionPublishSensorLuxes():
    mqttclient = paho.Client()
    mqttclient.on_publish = functionPublishSensorLuxesOn
    mqttclient.connect(mqttserver, mqttport, 60)
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

    print "Hello Edzna"

    while True:
        time.sleep(5)

# End of File
