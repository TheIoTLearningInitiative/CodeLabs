# ------------- GROVE BUZZER ------------- #
# Basic sample using UPM module for the    #
# Grove buzzer v1.2                        #
# Daniela Plascencia | daplascen@gmail.com #


# The UPM module for this buzzer allows the 
# user to play chords or frequencies.
# Refer to the API for more info
# http://iotdk.intel.com/docs/master/upm/python/pyupm_buzzer.html

import time
import pyupm_buzzer as upmBuzzer

buzzer = upmBuzzer.Buzzer(5) # Instances the buzzer and sets it
                             # in digital out 5

# Play a note for one second and then stop
print buzzer.playSound(upmBuzzer.DO, 1000000)
