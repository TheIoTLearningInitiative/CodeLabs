#!/usr/bin/python

import paho.mqtt.client as paho
import time
import pyupm_grove as grove
from threading import Thread

button = grove.GroveButton(8)

def functionDataSensor():
    return button.value()

def functionDataSensorMqttPublish():
    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    while True:
        data = functionDataSensor()
        topic = "edzna/principal/opening"
        mqttclient.publish(topic, data)
        time.sleep(1)

if __name__ == '__main__':

    threadmqttpublish = Thread(target=functionDataSensorMqttPublish)
    threadmqttpublish.start()

    print "Hello Edzna @ Opening"

    while True:
        time.sleep(5)

# End of File
