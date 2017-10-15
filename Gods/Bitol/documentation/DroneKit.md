# DroneKit

> DroneKit is a set of developer tools for drones. It includes Python and Android APIs that automatically aggregate drone information sent over MAVLink and simplify sending common commands over MAVLink. There is also a separate tool for analysing different types of logs.

- [DroneKit Homepage](http://python.dronekit.io/about/index.html)
- [Tower for Web](https://github.com/dronekit/tower-web)
- [Idiot's Guide to DroneKit-Python](http://diydrones.com/profiles/blogs/idiot-s-guide-to-dronekit-python-a-journey-to-whoz-chillin)

DroneKit

```sh
user@workstation:~/Drones$ sudo apt-get install python-pip python-dev
user@workstation:~/Drones$ sudo pip install dronekit
user@workstation:~/Drones$ sudo pip install dronekit-sitl
user@workstation:~/Drones$ sudo pip install dronekit-sitl -UI
user@workstation:~/Drones$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0
user@workstation:~/Drones$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0 --instance 0
```

Tower

```sh
user@workstation:~/Drones$ sudo -H pip install -UI git+https://github.com/dronekit/tower-web.git
user@workstation:~/Drones$ tower tcp:127.0.0.1:5760
```

