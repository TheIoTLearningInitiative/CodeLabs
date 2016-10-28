# MQTT Light

Based on [MQTT Light]()
- [Open Home Automation Github](https://github.com/mertenats/open-home-automation/tree/master/openhome)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
light:
  platform: mqtt
  name: EdznaLight
  state_topic: 'edzna/light/status'
  command_topic: 'edzna/light/switch'
  optimistic: false
```