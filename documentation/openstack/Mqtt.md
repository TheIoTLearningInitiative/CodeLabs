# MQ Telemetry Transport

## Mosquitto

> Mosquitto is an open source (BSD licensed) message broker that implements the MQ Telemetry Transport protocol versions 3.1 and 3.1.1. MQTT provides a lightweight method of carrying out messaging using a publish/subscribe model.

[Mosquitto Homepage](http://mosquitto.org/)

## Mosquitto Client Open Server

We should have all Mosquitto MQTT tools available in latest version of Linux Yocto based version

As subscribers

```sh
root@edison:~# mosquitto_sub -h test.mosquitto.org -p 1883 -t IoT101/#
```

As publishers

```sh
root@edison:~# mosquitto_pub -h test.mosquitto.org -p 1883 -t IoT101/all -m "Hello All!"
```



