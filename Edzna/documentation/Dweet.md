# Dweet

```sh
sensor:
  - platform: dweet
    name: EdznaLightSensorDweet
    device: ThisIsDweeting
    value_template: '{{ value_json.luxes }}'
    unit_of_measurement: "°C"
```