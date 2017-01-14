import signal
import os
import time
from datetime import datetime
import threading

def functiona():

	while True:

		print 'Function A'
		time.sleep(0.5)

def functionb():

	while True:

		print 'Function B'
		time.sleep(0.5)

def main():

	try:

		d = threading.Thread(name='functiona', target=functiona)
		d.setDaemon(True)
		m = threading.Thread(name='functionb', target=functionb)
		m.setDaemon(True)
		d.start()
		m.start()
		signal.pause()

	except(KeyboardInterrupt, SystemExit):

		print 'Exiting program'		
			
			
if __name__ == '__main__':

	main()
