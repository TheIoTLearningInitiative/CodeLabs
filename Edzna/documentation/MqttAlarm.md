# Alarm

- disarmed
- armed_home
- armed_away
- triggered

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m disarmed
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t edzna/alarm -m disarmed
```