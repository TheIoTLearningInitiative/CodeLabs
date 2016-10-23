# Dweet

Device based on Xpuhil Project

```sh
sensor:
  - platform: dweet
    name: EdznaLightSensorDweet
    device: ThisIsDweeting
    value_template: '{{ value_json.luxes }}'
    unit_of_measurement: "lx"
```