#!/usr/bin/python

import paho.mqtt.client as paho
import time
from threading import Thread

def KeypadOptionMessage(mosq, obj, msg):
    msg.topic = msg.topic.replace("hochob/keypad/", "")
    msg.payload = msg.payload.translate(None, '"')

def KeypadOption():
    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    mqttclient.subscribe("hochob/keypad/#", 0)
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
