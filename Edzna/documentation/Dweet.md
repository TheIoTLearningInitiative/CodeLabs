# Dweet

```sh
sensor:
  - platform: dweet
    name: EdznaLightSensorDweet
    device: ThisIsDweeting
    value_template: '{{ value_json.VARIABLE }}'
    unit_of_measurement: "°C"
```