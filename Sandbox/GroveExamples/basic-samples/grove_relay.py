import pyupm_grove as g
from time import sleep

if __name__ == '__main__':

    relay = g.GroveRelay(4)
    relay.on()
    sleep(1.5)
    relay.off()
    sleep(1.5)

