#!/usr/bin/python

import paho.mqtt.client as paho
import sys
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

    mqtt_server_address = sys.argv[1]
    mqttclient = paho.Client()
    mqttclient.connect(mqtt_server_address, 1883, 60)
    mqttclient.subscribe("hochob/keypad/virtual", 0)
    mqttclient.on_message = KeypadOptionMessage
    mqttclient.loop_start()

    while loop == 1:
        time.sleep(0.1)

    mqttclient.disconnect()
    mqttclient.loop_stop()

# End of File
