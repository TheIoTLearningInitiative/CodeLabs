# Home Automation

```sh



light:
  - platform: mqtt
    name: Kitchen
    state_topic: 'edzna/sa/light/status'
    command_topic: 'edzna/sa/light/switch'
    rgb_state_topic: "edzna/sa/light/rgb/status"
    rgb_command_topic: "edzna/sa/light/rgb/set"
    optimistic: true
```