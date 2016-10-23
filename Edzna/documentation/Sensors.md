# Sensors

## sensor

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: mqtt
    name: EdznaLightSensor
    state_topic: "edzna/light/sensor"
```

## automation

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
automation:
  - alias: Sunlight Notification
    trigger:
      platform: numeric_state
      entity_id: sensor.EdznaLightSensor
      above: 5
    action:
      service: notify.EdznaBot
      data_template:
        title: "Good Morning!"
        message: "Time to wake up, we have {{ states.sensor.EdznaBot.state }} luxes"
```