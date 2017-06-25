#!/usr/bin/python

import paho.mqtt.client as paho
import time
from threading import Thread

def KeypadOptionMessage(mosq, obj, msg):
    # print msg.payload == "ON":
    print msg.payload

def KeypadOption():
    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    mqttclient.subscribe("hochob/keypad/virtual", 0)
    mqttclient.on_message = KeypadOptionMessage
    while mqttclient.loop() == 0:
        pass

if __name__ == '__main__':

    threadmqttsubscribe = Thread(target=KeypadOption)
    threadmqttsubscribe.start()

    print "Hochob Keypad"

    while True:
        time.sleep(5)

# End of File
