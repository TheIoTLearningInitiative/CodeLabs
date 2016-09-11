# IoT101 Inc.

## Once Upon A Time ...

A company...

### Profile

- __Business Name__: IOT101 Inc.
- __Sector__: Industrial
- __Company Overview__: IOTL101 Inc. creates End to End Industrial Automation Solutions to collect, exchange, analyze and react on events.
- 
### Business Need

A 500 Fortune company specialized in Plastic transformation has requested IOT101 Inc. a Proof of Concept to create their  next-generation End to End Industrial Automation System. The  solution shall improve at Predictive Maintenance and Decision Making:

- Real-time Asset Monitoring 
- Single Screen Operator View (Decision Making)

### Customer Proposed Functional Architecture

- Industrial Device
  - Temperature
  - Actuator
- Communication
- Cloud
  - Application
- Mobile
  - Application 

### Customer Required Products and Services

- Hardware
  - Linux Based Embedded Platform
  - Sensor
  - Actuator
- Software
  - Linux Based Operating System
- Partners
  - IBM 
  - Freeboard

## iot101inc execution

```sh
root@edison:~/openstack/device# python iot101inc.py 
Hello Internet of Things 101
Data Sensor: 13551 
Data Sensor Mqtt Published!
API Weather: Guadalajara, JO, Mexico, Temperature 23 C, Atmospheric Pressure 842 mbar 
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
Hello Internet of Things 101
Data Sensor: 13641 
Data Sensor Mqtt Published!
API Weather: Guadalajara, JO, Mexico, Temperature 23 C, Atmospheric Pressure 842 mbar 
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
Data Sensor Mqtt Published!
^Z
[2]+  Stopped(SIGTSTP)        python iot101inc.py
root@edison:~/openstack/device# 
```

# iot101inc source code

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
    mqttclient.subscribe("IoT101/DataActuator", 0)
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
        topic = "IoT101/DataSensor"
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
        print "Hello Internet of Things 101"
        print "Data Sensor: %s " % functionDataSensor()
        print "API Weather: %s " % functionApiWeather()
        time.sleep(5)

# End of File
```