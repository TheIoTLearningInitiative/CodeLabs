# Light Sensor

## sensor

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: mqtt
    name: EdznaLightSensorMqtt
    state_topic: "edzna/light/sensor"
```

## automation

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
automation:
  - alias: Sunrise
    trigger:
      platform: numeric_state
      entity_id: sensor.EdznaLightSensor
      above: 10
    action:
      service: notify.EdznaBot
      data_template:
        title: "Good Morning!"
        message: "Time to wake up, we have {{ states.sensor.EdznaLightSensorMqtt.state }} luxes in the air!"
  - alias: Sunset 
    trigger:
      platform: numeric_state
      entity_id: sensor.EdznaLightSensor
      below: 10
    action:
      service: notify.EdznaBot
      data_template:
        title: "Good Night!"
        message: "Time to sleep, we have {{ states.sensor.EdznaLightSensorMqtt.state }} luxes in the air!"
```