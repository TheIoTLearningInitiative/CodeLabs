# Automation

```sh
automation:
  - alias: Turn on lights when motion detected
    trigger:
      platform: mqtt
      topic: edzna/principal/motion
      payload: True
    action:
      entity_id:
      - light.Principal
      service: light.turn_on
  - alias: Turn off lights when motion not detected
    trigger:
      platform: mqtt
      topic: edzna/principal/motion
      payload: False
    action:
      entity_id:
      - light.Principal
      service: light.turn_off
  - alias: Send to Telegram Bot messsage when window opening happens
    trigger:
      platform: mqtt
      topic: edzna/principal/opening
      payload: 1
    action:
      service: notify.Bot
      data:
        message: 'Window in Principal was opened!'
  - alias: Alarm Notification
    trigger:
      platform: time
      hours: 00
      minutes: 00
      seconds: 00
    action:
      service: notify.Bot
      data:
        message: 'Time to sleep'
  - alias: Sunrise
    trigger:
      platform: numeric_state
      entity_id: sensor.EdznaLightSensor
      above: 10
    action:
      service: notify.EdznaBot
      data_template:
        title: "Good Morning!"
        message: "Time to wake up, we have {{ states.sensor.EdznaLightSensor.state }} luxes in the air!"
  - alias: Sunset
    trigger:
      platform: numeric_state
      entity_id: sensor.EdznaLightSensor
      below: 10
    action:
      service: notify.EdznaBot
      data_template:
        title: "Good Night!"
        message: "Time to sleep, we have {{ states.sensor.EdznaLightSensor.state }} luxes in the air!"
  - alias: Update notifications
    trigger:
      - platform: state
        entity_id: updater.updater
    action:
      service: notify.EdznaBot
      data:
        message: 'There is a new Home Assistant release available.'
```