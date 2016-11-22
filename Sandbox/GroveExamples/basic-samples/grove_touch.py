import pyupm_ttp223 as t
from time import sleep

touch = t.TTP223(4)

while True:
   if touch.isPressed():
      print 'Sensor is pressed'
   else:
      print 'Sensor is not pressed'
   sleep(1.0)
