# Xpuhil



> Xpuhil Pronounced:/ʃpuχil̥/ (also Xpujil) is a Maya archaeological site located in the Mexican state of Campeche, in the vicinity of the modern-day town of Xpujil. The area surrounding Xpuhil, along Federal Highway 186, is rich with other Maya sites, including Becan and Calakmul. The name xpuhil means "cat's tail" in reference to a type of vegetation found locally [Wikipedia](https://en.wikipedia.org/wiki/Xpuhil)

## Hardware Requirements

* None

## Software Requirements

```sh
root@board:~# pip install dweepy
root@board:~# opkg install python-dev
```

## Setup

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Xpuhil/setup.sh -o - | sh
```

## Code

```sh
root@board:~/CodeLabs/Xpuhil# vi main.py
```

```python
#!/usr/bin/python

import atexit
import dweepy
import signal
import sys
import time

import pyupm_grove as grove

light = grove.GroveLight(0)

dweetiodatasource = {}
dweetiothingname = "Xpuhil"

def SIGINTHandler(signum, frame):
	raise SystemExit

def exitHandler():
	print "Exiting"
        time.sleep(2)
        dweetiodatasource['alive'] = "0"
        dweetiodatasource['luxes'] =  0
        dweetiodatasource['message'] = "None"
        dweepy.dweet_for(dweetiothingname, dweetiodatasource)
	sys.exit(0)

atexit.register(exitHandler)
signal.signal(signal.SIGINT, SIGINTHandler)

if __name__ == '__main__':

    message = "Hello Xpuhil!"

    while True:

        luxes = light.value()

        dweetiodatasource['alive'] = "1"
        dweetiodatasource['luxes'] =  luxes
        dweetiodatasource['message'] = message
        dweepy.dweet_for(dweetiothingname, dweetiodatasource)

        time.sleep(2)
```

## Execution

```sh
root@edison:~/CodeLabs/Xpuhil# python main.py 
...
root@edison:~/CodeLabs/Xpuhil# 
```



