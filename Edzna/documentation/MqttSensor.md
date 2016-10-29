# Sensor

[MQTT Sensor](https://home-assistant.io/components/sensor.mqtt/)
[MQTT Binary Sensor](https://home-assistant.io/components/binary_sensor.mqtt/)
[Binary Sensor](https://home-assistant.io/components/binary_sensor/)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```python
sensor:
  - platform: mqtt
    name: KitchenLuxesMqtt
    state_topic: "edzna/kitchen/luxes"
    sensor_class: light
  - platform: mqtt
    name: PrincipalLuxesMqtt
    state_topic: "edzna/principal/luxes"
    sensor_class: light
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/kitchen/luxes -m 25
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/principal/luxes -m 50
```

```sh
  - platform: worldclock
    time_zone: America/Mexico_City
```