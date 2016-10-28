#!/usr/bin/python

import paho.mqtt.client as paho
import pywapi
import signal
import sys
import time
import pyupm_biss0001
from threading import Thread

motion = pyupm_biss0001.BISS0001(6)

def functionDataSensor():
    return motion.value()

def functionDataSensorMqttPublish():
    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    while True:
        data = functionDataSensor()
        topic = "edzna/principal/motion"
        mqttclient.publish(topic, data)
        time.sleep(1)

if __name__ == '__main__':

    threadmqttpublish = Thread(target=functionDataSensorMqttPublish)
    threadmqttpublish.start()

    print "Hello Edzna @ Motion"

    while True:
        time.sleep(5)

# End of File
