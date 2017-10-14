#!/bin/sh

#dronekit-sitl copter --home=19.3931814,-99.1748997,30,0 --instance 3

cd /home/pyme/src/Firmware/
make posix gazebo_typhoon_h480 &

/home/pyme/Drones/QGroundControl.AppImage &


# End of File
