# MQTT Broker

```sh
user@server:~$ sudo apt-get update
user@server:~$ sudo apt-get install mosquitto
```

```sh
user@server:~$ sudo update-rc.d mosquitto defaults
user@server:~$ sudo /etc/init.d/mosquitto start
```

```sh
root@server:/home/pymelab# service mosquitto status 
mosquitto start/running, process 682
root@server:/home/pymelab# service mosquitto stop
mosquitto stop/waiting
root@server:/home/pymelab# service mosquitto status 
mosquitto stop/waiting
```

## Testing

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