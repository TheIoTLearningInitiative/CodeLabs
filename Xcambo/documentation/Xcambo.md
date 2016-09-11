# Xcambo

> Mqtt Sensor Data 

## Hardware Requirements

- None

## Software Requirements

```sh
root@board:~# pip install psutil paho-mqtt
root@board:~# opkg install python-dev
```

```sh
root@board:~# wget https://launchpad.net/python-weather-api/trunk/0.3.8/+download/pywapi-0.3.8.tar.gz
root@board:~# tar zxvf pywapi-0.3.8.tar.gz
root@board:~# cd pywapi-0.3.8
root@board:~# python setup.py build
root@board:~# python setup.py install
root@board:~# cd ..
root@board:~# rm -rf pywapi-0.3.8*
```

## Setup

```sh
root@edison:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Xcambo/setup.sh -o - | sh
```

## Code

```sh
root@board:~# vi main.py
```

```python
#!/usr/bin/python

import paho.mqtt.client as paho
import psutil
import pywapi
import signal
import sys
import time

from threading import Thread

def functionApiWeather():
    data = pywapi.get_weather_from_weather_com('MXJO0043', 'metric')
    message = data['location']['name']
    message = message + ", Temperature " + data['current_conditions']['temperature'] + " C"
    message = message + ", Atmospheric Pressure " + data['current_conditions']['barometer']['reading'][:-3] + " mbar"
    return message

def functionDataActuator(status):
    print "Data Actuator Status %s" % status

def functionDataActuatorMqttOnMessage(mosq, obj, msg):
    print "Data Sensor Mqtt Subscribe Message!"
    functionDataActuator(msg.payload)

def functionDataActuatorMqttSubscribe():
    mqttclient = paho.Client()
    mqttclient.on_message = functionDataActuatorMqttOnMessage
    mqttclient.connect("test.mosquitto.org", 1883, 60)
    mqttclient.subscribe("Xcambo/Main/DataActuator", 0)
    while mqttclient.loop() == 0:
        pass

def functionDataSensor():
    netdata = psutil.net_io_counters()
    data = netdata.packets_sent + netdata.packets_recv
    return data

def functionDataSensorMqttOnPublish(mosq, obj, msg):
    print "Data Sensor Mqtt Published!"

def functionDataSensorMqttPublish():
    mqttclient = paho.Client()
    mqttclient.on_publish = functionDataSensorMqttOnPublish
    mqttclient.connect("test.mosquitto.org", 1883, 60)
    while True:
        data = functionDataSensor()
        topic = "Xcambo/Main/DataSensor"
        mqttclient.publish(topic, data)
        time.sleep(1)

def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    threadmqttpublish = Thread(target=functionDataSensorMqttPublish)
    threadmqttpublish.start()

    threadmqttsubscribe = Thread(target=functionDataActuatorMqttSubscribe)
    threadmqttsubscribe.start()

    while True:
        print "Hello Xcambo"
        print "Data Sensor: %s " % functionDataSensor()
        print "API Weather: %s " % functionApiWeather()
        time.sleep(5)
```

## Execution

```sh
root@edison:~/CodeLabs/Xcambo# python LiveStreamProcessed.py 

```

