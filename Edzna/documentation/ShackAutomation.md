# Home Automation

```sh
mqtt:
  broker: iot.eclipse.org
  port: 1883
  client_id: edznashackautomation
  keepalive: 60

light:
  - platform: mqtt
    name: Room
    state_topic: 'edzna/sa/room/light/status'
    command_topic: 'edzna/sa/room/light/switch'
    rgb_state_topic: "edzna/sa/room/light/rgb/status"
    rgb_command_topic: "edzna/sa/room/light/rgb/set"
    optimistic: true
  - platform: mqtt
    name: Table
    state_topic: 'edzna/sa/table/light/status'
    command_topic: 'edzna/sa/table/light/switch'
    rgb_state_topic: "edzna/sa/table/light/rgb/status"
    rgb_command_topic: "edzna/sa/table/light/rgb/set"
    optimistic: true
```