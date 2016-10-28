#!/usr/bin/python

import paho.mqtt.client as paho
import time
import pyupm_grove as grove
from threading import Thread

light = grove.GroveLight(0)

def functionDataSensor():
    return light.value()

def functionDataSensorMqttPublish():
    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    topic = "edzna/principal/luxes"
    while True:
        data = functionDataSensor()
        mqttclient.publish(topic, data)
        time.sleep(1)

if __name__ == '__main__':

    threadmqttpublish = Thread(target=functionDataSensorMqttPublish)
    threadmqttpublish.start()

    print "Hello Edzna @ Luxes"

    while True:
        time.sleep(5)

# End of File
