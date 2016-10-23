# Sensors

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: mqtt
    name: EdznaLightSensor
    state_topic: "edzna/light/sensor"
  - platform: worldclock
    time_zone: America/Mexico_City
```

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
automation:
  - alias: Alarm Notification          
    trigger:
      platform: time
      hours: 00
      minutes: 00
      seconds: 00
    action:
      service: notify.EdznaBot
      data:
        message: 'Time to sleep'
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