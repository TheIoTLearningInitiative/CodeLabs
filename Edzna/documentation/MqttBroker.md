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
root@server:~# service mosquitto status 
mosquitto start/running, process 682
root@server:~# service mosquitto stop
mosquitto stop/waiting
root@server:~# service mosquitto status 
mosquitto stop/waiting
```

```sh
root@workstation:~# nano /etc/mosquitto/mosquitto.conf
```

```
# Port to use for the default listener.
port 1883

# Boolean value that determines whether clients that connect
# without providing a username are allowed to connect. If set to
# false then a password file should be created (see the
# password_file option) to control authenticated client access.
# Defaults to true.
allow_anonymous true
```

```sh
root@workstation:~# service mosquitto start
mosquitto start/running, process 3386
root@workstation:~# service mosquitto status
mosquitto start/running, process 3386
root@workstation:~# 
```

```sh
Conexiones activas de Internet (servidores y establecidos)
Proto  Recib Enviad Dirección local         Dirección remota       Estado      
tcp        0      0 pymelab-ThinkPad:domain *:*                     ESCUCHAR   
tcp        0      0 localhost:ipp           *:*                     ESCUCHAR   
tcp        0      0 *:1883                  *:*                     ESCUCHAR   
tcp        0      0 *:8123                  *:*                     ESCUCHAR   
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