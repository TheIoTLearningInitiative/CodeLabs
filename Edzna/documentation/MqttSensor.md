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
  - platform: worldclock
    time_zone: America/Mexico_City
  - platform: dweet
    name: KitchenLuxesDweet
    device: EdznaKitchenLuxes
    value_template: '{{ value_json.luxes }}'
    unit_of_measurement: "lx"
  - platform: darksky
    api_key: c07694254ea2fa73d657db1cd700971c
    monitored_conditions:
      - summary
      - precip_probability
      - apparent_temperature
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/kitchen/luxes -m 25
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/principal/luxes -m 50
```
