# Sensor

https://home-assistant.io/components/sensor.mqtt/
https://home-assistant.io/components/binary_sensor.mqtt/
https://home-assistant.io/components/binary_sensor/


```python
sensor:
  - platform: mqtt
    name: Kitchen Luxes
    state_topic: "edzna/kitchen/luxes"
    sensor_class: light
  - platform: mqtt
    name: Principal Luxes
    state_topic: "edzna/principal/luxes"
    sensor_class: light
```