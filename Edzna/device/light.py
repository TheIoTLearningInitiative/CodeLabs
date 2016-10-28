#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time
import pyupm_grove as grove

from threading import Thread

relay = grove.GroveRelay(2)

def functionDataActuatorMqttOnMessage(mosq, obj, msg):
    if msg.payload == "ON":
        relay.on()
    elif msg.payload == "OFF":
        relay.off()

def functionDataActuatorMqttSubscribe():
    mqttclient = paho.Client()
    mqttclient.connect("iot.eclipse.org", 1883, 60)
    mqttclient.subscribe("edzna/principal/light/switch", 0)
    mqttclient.on_message = functionDataActuatorMqttOnMessage
    while mqttclient.loop() == 0:
        pass

if __name__ == '__main__':

    threadmqttsubscribe = Thread(target=functionDataActuatorMqttSubscribe)
    threadmqttsubscribe.start()

    print "Hello Edzna @ Light"

    while True:
        time.sleep(5)

# End of File
