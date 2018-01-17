#!/usr/bin/python

import dronekit_sitl

print "Start DroneKit Simulator (SITL)"
sitl = dronekit_sitl.start_default()
connection_string = sitl.connection_string()

print "Stop DroneKit Simulator (SITL)"
sitl.stop()

print("Completed")
