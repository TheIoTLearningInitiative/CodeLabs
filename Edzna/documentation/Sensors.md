# Sensors

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: mqtt
    state_topic: "edzna/sensor/light"
    name: "MQTT Sensor Light"
  - platform: worldclock
    time_zone: America/Mexico_City
```