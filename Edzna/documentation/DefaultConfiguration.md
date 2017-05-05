# Default Configuration

```sh
xe1gyq@server:~$ nano ~/.homeassistant/configuration.yaml
```

```yaml
homeassistant:
  # Name of the location where Home Assistant is running
  name: Home
  # Location required to calculate the time the sun rises and sets
  latitude: 20.6955
  longitude: -103.4553
  # Impacts weather/sunrise data (altitude above sea level in meters)
  elevation: 1676
  # metric for Metric, imperial for Imperial
  unit_system: metric
  # Pick yours from here: http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  time_zone: America/Mexico_City

# Show links to resources in log and frontend
introduction:

# Enables the frontend
frontend:

# Enables configuration UI
config:

http:
  # Uncomment this to add a password (recommended!)
  # api_password: PASSWORD
  # Uncomment this if you are using SSL or running in Docker etc
  # base_url: example.duckdns.org:8123

# Checks for available updates
updater:

# Discover some devices automatically
discovery:

# Allows you to issue voice commands from the frontend in enabled browsers
conversation:

# Enables support for tracking state changes over time.
history:

# View all events in a logbook
logbook:

# Track the sun
sun:

# Weather Prediction
sensor:
  platform: yr

# Text to speech
tts:
  platform: google

group: !include groups.yaml
```