#!/usr/bin/python

import paho.mqtt.client as paho
import signal
import sys
import time
import pyupm_grove as grove

from threading import Thread

relay = grove.GroveRelay(2)

def functionDataActuator(status):
    print "Data Actuator Status %s" % status
    if status == "ON":
        relay.on()
    elif status == "OFF":
        relay.off()

def functionDataActuatorMqttOnMessage(mosq, obj, msg):
    print "Data Sensor Mqtt Subscribe Message!"
    functionDataActuator(msg.payload)

def functionDataActuatorMqttSubscribe():
    mqttclient = paho.Client()
    mqttclient.on_message = functionDataActuatorMqttOnMessage
    mqttclient.connect("test.mosquitto.org", 1883, 60)
    mqttclient.subscribe("edzna/light/switch", 0)
    while mqttclient.loop() == 0:
        pass

def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    threadmqttsubscribe = Thread(target=functionDataActuatorMqttSubscribe)
    threadmqttsubscribe.start()

    print "Hello Edzna"

    while True:
        time.sleep(5)

# End of File
