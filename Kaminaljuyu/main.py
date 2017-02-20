import signal
import os
import time
from datetime import datetime
import threading

import pyupm_gas as upmGas

def fMq2():

	# From
	# https://github.com/intel-iot-devkit/upm/blob/master/examples/python/mq2.py

        thisMq2 = upmGas.MQ2(0);

	threshContext = upmGas.thresholdContext()
	threshContext.averageReading = 0
	threshContext.runningAverage = 0
	threshContext.averagedOver = 2

	thisbuffer = upmGas.uint16Array(128)

	while True:
		samplelen = thisMq2.getSampledWindow(2, 128, thisbuffer)
		if samplelen:
			thresh = thisMq2.findThreshold(threshContext, 30, thisbuffer, samplelen)
			#thisMq2.printGraph(threshContext, 5)
			if(thresh):
				print("MQ2 Threshold: ", thresh)
		time.sleep(1)

def fMq5():

	# From
	# https://github.com/intel-iot-devkit/upm/blob/master/examples/python/mq5.py

        thisMq5 = upmGas.MQ5(1);

	threshContext = upmGas.thresholdContext()
	threshContext.averageReading = 0
	threshContext.runningAverage = 0
	threshContext.averagedOver = 2

	thisbuffer = upmGas.uint16Array(128)

	while True:
		samplelen = thisMq5.getSampledWindow(2, 128, thisbuffer)
		if samplelen:
			thresh = thisMq5.findThreshold(threshContext, 30, thisbuffer, samplelen)
			#thisMq5.printGraph(threshContext, 5)
			if(thresh):
				print("MQ5 Threshold: ", thresh)
		time.sleep(1)

def main():

	try:

		mq2 = threading.Thread(name='fMq2', target=fMq2)
		mq2.setDaemon(True)
		mq5 = threading.Thread(name='fMq5', target=fMq5)
		mq5.setDaemon(True)
		mq2.start()
		mq5.start()
		signal.pause()

	except(KeyboardInterrupt, SystemExit):

		print 'Exiting program'

if __name__ == '__main__':

	main()
