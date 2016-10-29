# MQTT Light

Based on [MQTT Light](https://home-assistant.io/components/light.mqtt/)

- [Open Home Automation Github](https://github.com/mertenats/open-home-automation/tree/master/openhome)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
light:
  - platform: mqtt
    name: Kitchen
    state_topic: 'edzna/kitchen/light/status'
    command_topic: 'edzna/kitchen/light/switch'
    rgb_state_topic: "edzna/kitchen/light/rgb/status"
    rgb_command_topic: "edzna/kitchen/light/rgb/set"
    optimistic: true
  - platform: mqtt
    name: Principal
    state_topic: 'edzna/principal/light/status'
    command_topic: 'edzna/principal/light/switch'
    rgb_state_topic: "edzna/principal/light/rgb/status"
    rgb_command_topic: "edzna/principal/light/rgb/set"
    optimistic: true
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m disarmed
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m armed_home
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m armed_away
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m triggered
```
