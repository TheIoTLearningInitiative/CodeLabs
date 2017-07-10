#!/usr/bin/python

import paho.mqtt.client as paho
import time
from threading import Thread

loop = 1

def KeypadOptionMessage(mosq, obj, msg):
    global loop
    # msg.topic = msg.topic.replace("hochob/keypad/", "")
    # print msg.topic + ":" + msg.payload
    msg.payload = msg.payload.translate(None, '"')
    print msg.payload
    loop = 0

if __name__ == '__main__':

    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    mqttclient.subscribe("hochob/keypad/virtual", 0)
    mqttclient.on_message = KeypadOptionMessage
    mqttclient.loop_start()

    while loop == 1:
        time.sleep(0.1)

    mqttclient.disconnect()
    mqttclient.loop_stop()

# End of File
