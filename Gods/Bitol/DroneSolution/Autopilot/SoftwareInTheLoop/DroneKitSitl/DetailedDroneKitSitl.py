from dronekit_sitl import SITL
import dronekit
import time
from dronekit_sitl import version_list
from dronekit_sitl import download
import sys

copter_args = ['-S', '--model', 'quad', '--home=-35.363261,149.165230,584,353']

sitl = SITL()
sitl.launch(copter_args, await_ready=True, use_saved_data=True)
vehicle = dronekit.connect(connection_string, wait_ready=True)
print vehicle.parameters["COMPASS_USE"]
vehicle.close()
sitl.stop()

sys.exit(0)

sitl = SITL()
sitl.stop()
sitl.download('copter', '3.3')
sitl.launch(copter_args, verbose=True, await_ready=True, use_saved_data=False)
sitl.stop()

sys.exit(0)

versions = version_list()
models = list(versions.keys())
print models.sort()

download('copter','3.3', None)


connection_string = sitl.connection_string()
vehicle = dronekit.connect(connection_string, wait_ready=True)

new_compass_use = 10

sitl.block_until_ready()

sitl.poll()
sitl.using_sim

sitl.stop()
sitl.poll()

sitl.launch(copter_args)
sitl.stop()

print("Changing COMPASS_USE to {0}".format(new_compass_use))
while vehicle.parameters["COMPASS_USE"] != new_compass_use:
    vehicle.parameters["COMPASS_USE"] = new_compass_use
    time.sleep(0.1)

print("Changed COMPASS_USE to {0}".format(new_compass_use))
time.sleep(5) # give parameters time to write
sitl.stop()
vehicle.close()

# Now see if it persisted

