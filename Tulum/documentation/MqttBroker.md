# MQTT Broker

# Setup

```sh
user@host:~$ sudo apt-get update
user@host:~$ sudo apt-get install mosquitto
user@host:~$ sudo update-rc.d mosquitto defaults
user@host:~$ sudo /etc/init.d/mosquitto start
```

# Testing

As subscribers

```sh
root@edison:~# mosquitto_sub -h ip.of.deployed.server -p 1883 -t IoT101Inc/#
```

As publishers

```sh
root@edison:~# mosquitto_pub -h ip.of.deployed.server -p 1883 -t IoT101Inc/all -m "Hello All!"
```

