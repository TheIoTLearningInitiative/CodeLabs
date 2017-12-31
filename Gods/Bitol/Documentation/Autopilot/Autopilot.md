# Autopilot / Flight Controller

> A system used to control the trajectory of an aircraft without constant 'hands-on' control by a human operator being required. Autopilots do not replace human operators but assist them in controlling aircraft, allowing them to focus on broader aspects of operations such as monitoring the trajectory, weather and systems. [Wikipedia](https://en.wikipedia.org/wiki/Autopilot)

> "Wait!" you ask, "Why do you need flight controller for simulator?". The primary job of flight controller is to take in desired state as input, estimate actual state using sensors data and then drive the actuators in such a way so that actual state comes as close to the desired state. For quadrotors, desired state can be specified as roll, pitch and yaw, for example. It than estimates actual roll, pitch and yaw using gyroscope and accelerometer. Then it generates appropriate motor signals so actual state becomes desired state. [AirSim Docs](https://github.com/Microsoft/AirSim/blob/master/docs/flight_controller.md)

- Fligt Controller
  - Inputs .. Sensors(IMU, Compass, Barometer, Somar, Cameras)
  - Inputs .. User Commands
  - Outputs .. Propeller Speeds
- Companion Computer

## Paparazzi UAV

> An open-source drone hardware and software project encompassing autopilot systems and ground station software for multicopters/multirotors, fixed-wing, helicopters and hybrid aircraft that was founded in 2003. Designed with autonomous flight as the primary focus and manual flying as the secondary. From the beginning it was designed with portability in mind and the ability to control multiple aircraft within the same system. Paparazzi features a dynamic flight plan system that is defined by mission states and using way points as “variables”. This makes it easy to create very complex fully automated missions without the operators intervention. 

- [Paparazzi UAV Homepage](http://wiki.paparazziuav.org/wiki/Main_Page)

## uaventure

- [uaventure Homepage](http://uaventure.com/)

