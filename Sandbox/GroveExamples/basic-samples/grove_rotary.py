import pyupm_grove as g
from time import sleep

if __name__ == '__main__':
    ras = g.GroveRotary(0) # Depends on the port you're using (0-3)
    while True:
        print "Absolute pin value: %d\nRelative pin value: %d\n" %(ras.abs_deg(), ras.rel_deg())
        sleep(0.5)
