import pyupm_grove as g
from time import sleep

if __name__ == '__main__':

   temp = g.GroveTemp(0)

   while True:

        #print "%d" %light.raw_value() 
        print "Celsius: %d" %temp.value() 
        sleep(1.5)

