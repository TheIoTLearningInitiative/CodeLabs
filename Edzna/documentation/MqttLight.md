# MQTT Light

Based on [MQTT Light](https://home-assistant.io/components/light.mqtt/)

* [Open Home Automation Github](https://github.com/mertenats/open-home-automation/tree/master/openhome)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
light:
  - platform: mqtt
    name: Principal
    state_topic: 'edzna/principal/light/status'
    command_topic: 'edzna/principal/light/switch'
    rgb_state_topic: "edzna/principal/light/rgb/status"
    rgb_command_topic: "edzna/principal/light/rgb/set"
    optimistic: true
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/principal/light/status ON
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/principal/light/status OFF
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/principal/light/rgb/status -m "255,0,0"
```



