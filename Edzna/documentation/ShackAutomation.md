# Home Automation

```sh
homeassistant:
  # Name of the location where Home Assistant is running
  name: Headquarters
  # Location required to calculate the time the sun rises and sets
  latitude: 20.616236
  longitude: -103.407955
  # Impacts weather/sunrise data (altitude above sea level in meters)
  elevation: 1700
  # metric for Metric, imperial for Imperial
  unit_system: metric
  # Pick yours from here: http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  time_zone: America/Mexico_City

  customize:
   # Binary Sensors
   binary_sensor.room:
    friendly_name: Motion
   binary_sensor.window:
    friendly_name: Window Opening
   binary_sensor.door:
    friendly_name: Door Opening
   binary_sensor.occupancy:
    friendly_name: Occupancy

# Show links to resources in log and frontend
# introduction:

# Enables the frontend
frontend:

#http:
# Uncomment this to add a password (recommended!)
#  api_password: ha

# Checks for available updates
#updater:

# Discover some devices automatically
#discovery:

# Allows you to issue voice commands from the frontend in enabled browsers
#conversation:

# Enables support for tracking state changes over time.
#history:

# View all events in a logbook
#logbook:

# Track the sun
#sun:

# Weather Prediction
#sensor:
#  platform: yr

mqtt:
  broker: test.mosquitto.org
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

sensor:
  - platform: mqtt
    name: Light
    state_topic: "edzna/sa/room/luxes"
    sensor_class: light
    unit_of_measurement: "lx"
  - platform: mqtt
    name: Temperature
    state_topic: "edzna/sa/room/temperature"
    sensor_class: temperature
    unit_of_measurement: "°C"
  - platform: mqtt
    name: Humidity
    state_topic: "edzna/sa/room/humidity"
    sensor_class: humidity
    unit_of_measurement: "%"

binary_sensor:
  - platform: mqtt
    name: Motion
    state_topic: "edzna/sa/movement/motion"
    sensor_class: motion
    payload_on: 1
    payload_off: 0
  - platform: mqtt
    name: Window
    state_topic: "edzna/sa/movement/window"
    sensor_class: opening
    payload_on: 1
    payload_off: 0
  - platform: mqtt
    name: Door
    state_topic: "edzna/sa/movement/door"
    sensor_class: opening
    payload_on: 1
    payload_off: 0
  - platform: mqtt
    name: Occupancy
    state_topic: "edzna/sa/movement/occupancy"
    sensor_class: occupancy
    payload_on: 1
    payload_off: 0
 - platform: mqtt
    name: Power
    state_topic: "edzna/sa/station/power"
    sensor_class: power
    payload_on: 1
    payload_off: 0
  - platform: mqtt
    name: Sound
    state_topic: "edzna/sa/station/sound"
    sensor_class: sound
    payload_on: 1
    payload_off: 0

lock:
  - platform: mqtt
    name: Door
    state_topic: "edzna/sa/door"
    command_topic: "edzna/sa/door/set"
    payload_lock: "LOCK"
    payload_unlock: "UNLOCK"
    optimistic: false
    qos: 1
    retain: true
    value_template: '{{ value.x }}'

camera:
  - platform: mqtt
    name: Main
    #topic: zanzito/shared_locations/edzna
    topic: zanzito/edzna/picture

group:
  default_view:
    view: yes
    entities:
      - group.security
      - group.lights
      - group.sensors
      - group.binarysensormovement
      - group.binarysensorstation
  security:
    name: Security
    entities:
    - lock.door
    - camera.main
  lights:
    name: Lights
    entities:
    - light.room
    - light.table
  sensors:
    name: Sensors
    entities:
    - sensor.light
    - sensor.temperature
    - sensor.humidity
  binarysensormovement:
    name: Movement
    entities:
    - binary_sensor.motion
    - binary_sensor.window
    - binary_sensor.door
  binarysensorstation:
    name: Station
    entities:
    - binary_sensor.occupancy
    - binary_sensor.power
    - binary_sensor.sound

```