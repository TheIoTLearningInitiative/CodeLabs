# Alarm

Based on [MQTT Alarm Control Panel](https://home-assistant.io/components/alarm_control_panel.mqtt/)

- disarmed
- armed_home
- armed_away
- triggered

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m disarmed
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m armed_home
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m armed_away
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m triggered
```

```python
alarm_control_panel:
  - platform: mqtt
    name: Alarm
    state_topic: "edzna/alarm"
    command_topic: "edna/alarm/set"
```