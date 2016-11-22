import pyupm_grove as g
from time import sleep

if __name__ == '__main__':

   light = g.GroveLight(0)

   while True:

        #print "%d" %light.raw_value() 
        print "Lux: %d" %light.value() 
        sleep(1.5)

