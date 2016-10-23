# Sensors

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: darksky
    api_key: c07694254ea2fa73d657db1cd700971c
    monitored_conditions:
      - summary
      - precip_probability
      - temperature
      - apparent_temperature
  - platform: mqtt
    state_topic: "edzna/sensor/light"
    name: "MQTT Sensor Light"
  - platform: worldclock
    time_zone: America/Mexico_City
```