# Muyil

> Muyil \(also known as Chunyaxché\) was one of the earliest and longest inhabited ancient Maya sites on the eastern coast of the Yucatan Peninsula. It is located approximately 15 kilometres (9.3 mi) south of the coastal site of Tulum, in the Municipality of Felipe Carrillo Puerto in the state of Quintana Roo, Mexico [Wikipedia](https://en.wikipedia.org/wiki/Muyil)

## Hardware Requirements

* None

## Software Requirements

```sh
root@board:~# wget https://launchpad.net/python-weather-api/trunk/0.3.8/+download/pywapi-0.3.8.tar.gz
root@board:~# tar zxvf pywapi-0.3.8.tar.gz
root@board:~# cd pywapi-0.3.8
root@board:~# python setup.py build
root@board:~# python setup.py install
root@board:~# cd ..
root@board:~# rm -rf pywapi-0.3.8*
```

## Setup

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Muyil/setup.sh -o - | sh
```

## Code

```sh
root@board:~/CodeLabs/Muyil# vi main.py
```

```python
#!/usr/bin/python

import pywapi
import signal
import sys
import time

def functionApiWeather():
    data = pywapi.get_weather_from_weather_com('MXJO0043', 'metric')
    message = data['location']['name']
    message = message + ", Temperature " + data['current_conditions']['temperature'] + " C"
    message = message + ", Atmospheric Pressure " + data['current_conditions']['barometer']['reading'][:-3] + " mbar"
    return message

def functionSignalHandler(signal, frame):
    sys.exit(0)

if __name__ == '__main__':

    signal.signal(signal.SIGINT, functionSignalHandler)

    while True:
        print "Hello Muyil"
        print "API Weather: %s " % functionApiWeather()
        time.sleep(5)
```

## Execution

```sh
root@board:~/CodeLabs/Muyil# python main.py
Hello Muyil
API Weather: Guadalajara, JO, Mexico, Temperature 22 C, Atmospheric Pressure 847 mbar 
root@board:~/CodeLabs/Muyil# 
```




