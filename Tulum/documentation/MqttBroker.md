# MQTT Broker

# Setup

```sh
user@server:~$ sudo apt-get update
user@server:~$ sudo apt-get install mosquitto
user@server:~$ sudo update-rc.d mosquitto defaults
user@server:~$ sudo /etc/init.d/mosquitto start
```

# Testing

```sh
user@server:~$ sudo apt-get install mosquitto-clients
```

As subscribers

```sh
user@server:~$ mosquitto_sub -h serverip -p 1883 -t This/#
```

As publishers

```sh
user@server:~$ mosquitto_pub -h serverip -p 1883 -t This/Topic -m "Hello All!"
```

