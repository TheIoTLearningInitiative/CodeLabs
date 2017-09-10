#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time

from threading import Thread
from upm import pyupm_grove as grove
from upm import pyupm_biss0001 as grovemotion

light = grove.GroveLight(0)
switch = grove.GroveRelay(2)
motion = grovemotion.BISS0001(6)
button = grove.GroveButton(4)

mqttserver = "iot.eclipse.org"
mqttport = 1883

def functionSubscribeSwitchData(mosq, obj, msg):
    print "Subscribe Actuator Data: We received %s!" % msg.payload
    if msg.payload == "1":
        switch.on()
    elif msg.payload == "0":
        switch.off()

def functionSubscribeSwitch():
    mqttclient = paho.Client()
    mqttclient.on_message = functionSubscribeActuatorData
    mqttclient.connect(mqttserver, mqttport, 60)
    mqttclient.subscribe("cochinitapibil/achiote/switch", 0)
    while mqttclient.loop() == 0:
        pass

def functionPublishSensorLuxesData():
    luxes = light.value()
    print "Publish Sensor Luxes Data: We got %s!" % luxes
    return luxes

def functionPublishSensorLuxes():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorLuxesData()
        topic = "cochinitapibil/achiote/luxes"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionPublishSensorBinaryMotionData():
    value = motion.value()
    if value:
        value = 1
    else:
        value = 0
    print "Publish Sensor Binary Motion Data: We got %s!" % value
    return value

def functionPublishSensorBinaryMotion():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorBinaryMotionData()
        topic = "cochinitapibil/achiote/motion"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionPublishSensorBinaryOpeningData():
    value = button.value()
    print "Publish Sensor Binary Opening Data: We got %s!" % value
    return value

def functionPublishSensorBinaryOpening():
    mqttclient = paho.Client()
    mqttclient.connect(mqttserver, mqttport, 60)
    while True:
        data = functionPublishSensorBinaryOpeningData()
        topic = "cochinitapibil/achiote/opening"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    threadmqttsubscribeswitch = Thread(target=functionSubscribeSwitch)
    threadmqttsubscribeswitch.start()

    threadmqttpublishsensorluxes = Thread(target=functionPublishSensorLuxes)
    threadmqttpublishsensorluxes.start()

    threadmqttpublishsensorbinarymotion = Thread(target=functionPublishSensorBinaryMotion)
    threadmqttpublishsensorbinarymotion.start()

    threadmqttpublishsensorbinaryopening = Thread(target=functionPublishSensorBinaryOpening)
    threadmqttpublishsensorbinaryopening.start()

    print "IoT Solution Architect: From The Device To A Cloud Platform"

    while True:
        time.sleep(5)

# End of File
