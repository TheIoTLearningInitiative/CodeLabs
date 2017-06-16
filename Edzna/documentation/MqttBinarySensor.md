# Binary Sensor

[MQTT Sensor](https://home-assistant.io/components/sensor.mqtt/)
[MQTT Binary Sensor](https://home-assistant.io/components/binary_sensor.mqtt/)
[Binary Sensor](https://home-assistant.io/components/binary_sensor/)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
binary_sensor:
  - platform: mqtt
    name: "Kitchen Motion"
    state_topic: "edzna/kitchen/motion"
    sensor_class: motion
    payload_on: True
    payload_off: False
  - platform: mqtt
    name: "Kitchen Opening"
    state_topic: "edzna/kitchen/opening"
    sensor_class: opening
    payload_on: 1
    payload_off: 0
  - platform: mqtt
    name: "Principal Motion"
    state_topic: "edzna/principal/motion"
    sensor_class: motion
    payload_on: True
    payload_off: False
  - platform: mqtt
    name: "Principal Opening"
    state_topic: "edzna/principal/opening"
    sensor_class: opening
    payload_on: 1
    payload_off: 0
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/kitchen/motion -m True
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/bedroom/motion -m True
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/kitchen/opening -m 1
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/bedroom/opening -m 1
```
