# Autopilot / Flight Controller

> A system used to control the trajectory of an aircraft without constant 'hands-on' control by a human operator being required. Autopilots do not replace human operators but assist them in controlling aircraft, allowing them to focus on broader aspects of operations such as monitoring the trajectory, weather and systems. [Wikipedia](https://en.wikipedia.org/wiki/Autopilot)

> "Wait!" you ask, "Why do you need flight controller for simulator?". The primary job of flight controller is to take in desired state as input, estimate actual state using sensors data and then drive the actuators in such a way so that actual state comes as close to the desired state. For quadrotors, desired state can be specified as roll, pitch and yaw, for example. It than estimates actual roll, pitch and yaw using gyroscope and accelerometer. Then it generates appropriate motor signals so actual state becomes desired state. [AirSim Docs](https://github.com/Microsoft/AirSim/blob/master/docs/flight_controller.md)

- Fligt Controller
  - Inputs .. Sensors(IMU, Compass, Barometer, Somar, Cameras)
  - Inputs .. User Commands
  - Outputs .. Propeller Speeds
- Companion Computer


## Hardware In The Loop

Hardware-in-Loop (HITL or HIL) means flight controller runs in actual hardware such as Naze32 or Pixhawk chip. You than connect this hardware to PC using USB port. Simulator talks to the device to retrieve actuator signals and send it simulated sensor data. This is obviously as close as you can get to real thing. However it typically requires more steps to set up and usually hard to debug. One big issue is that simulator clock and device clock runs on their own speed and accuracy. Also, USB connection (which is usually only USB 2.0) may not be enough for real time communication.

## Software In the Loop

In "software-in-loop" simulation (SITL or SIL) mode the firmware runs in your computer as opposed to separate board. This is generally fine except that now you are not touching any code paths that are specific to your device. Also, none of your code now runs with real time clock usually provided by specialized hardware board. For well designed flight controllers with software clock, these are usually not concerning issues.

