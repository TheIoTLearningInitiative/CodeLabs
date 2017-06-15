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
button = grove.GroveButton(4)

mqttserver = "iot.eclipse.org"
mqttport = 1883

def functionSubscribeLightLampData(status):
    print "Light Lamp Data %s" % status

def functionSubscribeLightLampOn(mosq, obj, msg):
    print "Subscribe Light Lamp Data!"
    if msg.payload == "1":
        relay.on()
    elif msg.payload == "0":
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
    value = motion.value()
    if value:
        value = 1
    else:
        value = 0
    print "Sensor Motion Data %s" % value
    return value

def functionPublishSensorBinaryMotionOn(mosq, obj, msg):
    print "Publish Sensor Motion Data!"

def functionPublishSensorBinaryMotion():
    mqttclient = paho.Client()
    mqttclient.on_publish = functionPublishSensorBinaryMotionOn
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorBinaryMotionData()
        topic = "edzna/bedroom/motion"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionPublishSensorBinaryOpeningData():
    value = button.value()
    print "Sensor Opening Data %s" % value
    return value

def functionPublishSensorBinaryOpeningOn(mosq, obj, msg):
    print "Publish Sensor Opening Data!"

def functionPublishSensorBinaryOpening():
    mqttclient = paho.Client()
    mqttclient.on_publish = functionPublishSensorBinaryOpeningOn
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorBinaryOpeningData()
        topic = "edzna/bedroom/opening"
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

    threadmqttpublishsensorbinaryopening = Thread(target=functionPublishSensorBinaryOpening)
    threadmqttpublishsensorbinaryopening.start()

    print "Hello Edzna"

    while True:
        time.sleep(5)

# End of File
