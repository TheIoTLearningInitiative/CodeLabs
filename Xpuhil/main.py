#!/usr/bin/python

import atexit
import dweepy
import signal
import sys
import time

import pyupm_grove as grove

light = grove.GroveLight(0)

datafreeboard = {}
datadweet = "Xpuhil"

def SIGINTHandler(signum, frame):
	raise SystemExit

def exitHandler():
	print "Exiting"
        time.sleep(2)
        datafreeboard['alive'] = "0"
        datafreeboard['luxes'] =  0
        datafreeboard['message'] = "None"
        dweepy.dweet_for(datadweet, datafreeboard)
	sys.exit(0)

atexit.register(exitHandler)
signal.signal(signal.SIGINT, SIGINTHandler)

if __name__ == '__main__':

    message = "Hello Xpuhil!"

    while True:

        luxes = light.value()

        datafreeboard['alive'] = "1"
        datafreeboard['luxes'] =  luxes
        datafreeboard['message'] = message
        dweepy.dweet_for(datadweet, datafreeboard)

        time.sleep(1)
