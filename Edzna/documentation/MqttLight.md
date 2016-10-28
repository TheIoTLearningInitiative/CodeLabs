# MQTT Light

Based on [MQTT Light](https://home-assistant.io/components/light.mqtt/)

- [Open Home Automation Github](https://github.com/mertenats/open-home-automation/tree/master/openhome)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
light:
  - platform: mqtt
    name: Principal
    state_topic: 'edzna/principal/light/status'
    command_topic: 'edzna/principal/light/switch'
    optimistic: true
  - platform: mqtt
    name: Kitchen
    state_topic: 'edzna/kitchen/light/status'
    command_topic: 'edzna/kitchen/light/switch'
    optimistic: true
```