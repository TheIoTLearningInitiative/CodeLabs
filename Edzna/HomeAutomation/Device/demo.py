#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time

from threading import Thread
from upm import pyupm_grove as grove
from upm import pyupm_biss0001 as grovemotion

light = grove.GroveLight(0)
relay = grove.GroveRelay(2)
motion = grovemotion.BISS0001(6)

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
    mqttclient.subscribe("edzna/bedroom/lamp/switch", 0)
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
        topic = "edzna/bedroom/luxes"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionPublishSensorBinaryMotionData():
    motion = motion.value()
    print "Sensor Motion Data %s" % motion
    return motion

def functionPublishSensorBinaryMotionOn(mosq, obj, msg):
    print "Publish Sensor Luxes Data!"

def functionPublishSensorBinaryMotion():
    mqttclient = paho.Client()
    mqttclient.on_publish = functionPublishSensorBinaryMotionOn
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorBinaryMotionData()
        topic = "edzna/bedroom/motion"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    threadmqttsubscribelightlamp = Thread(target=functionSubscribeLightLamp)
    threadmqttsubscribelightlamp.start()

    threadmqttpublishsensorluxes = Thread(target=functionPublishSensorLuxes)
    threadmqttpublishsensorluxes.start()

    threadmqttpublishsensorbinarymotion = Thread(target=functionPublishSensorBinaryMotion)
    threadmqttpublishsensorbinarymotion.start()

    print "Hello Edzna"

    while True:
        time.sleep(5)

# End of File
