# DroneKit-Sitl

> Your aerial platform. DroneKit offers an SDK and web API to easily develop apps for your drones.

> DroneKit is a set of developer tools for drones. It includes Python and Android APIs that automatically aggregate drone information sent over MAVLink and simplify sending common commands over MAVLink. There is also a separate tool for analysing different types of logs.

- [DroneKit Python](http://python.dronekit.io/)
- [Tower for Web](https://github.com/dronekit/tower-web)
- [Idiot's Guide to DroneKit-Python](http://diydrones.com/profiles/blogs/idiot-s-guide-to-dronekit-python-a-journey-to-whoz-chillin)

```sh
user@workstation:~$ dronekit-sitl --list
solo-1.2.0
solo-2.0.18
solo-2.0.20
plane-3.3.0
copter-3.3
rover-2.50
user@workstation:~$ 
```

```sh
user@workstation:~/Drones$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0
user@workstation:~/Drones$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0 --instance 0
```

Tower

```sh
user@workstation:~/Drones$ sudo -H pip install -UI git+https://github.com/dronekit/tower-web.git
user@workstation:~/Drones$ tower tcp:127.0.0.1:5760
```


