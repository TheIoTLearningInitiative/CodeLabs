# Gateway

# IP Address

```sh
user@ẁorkstation:~$ sudo nmap -sP 192.168.1.1-254

Starting Nmap 6.47 ( http://nmap.org ) at 2016-10-22 15:14 CDT
Nmap scan report for 192.168.1.73
Host is up (0.13s latency).
MAC Address: 18:FE:34:DC:27:3F (Espressif)
Nmap done: 254 IP addresses (8 hosts up) scanned in 5.20 seconds
user@ẁorkstation:~$ 
```

# Command Line Curl

```sh
user@ẁorkstation:~$ curl http://192.168.1.73
{"variables": {"temperature": 24, "humidity": 40}, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
```

```sh
xe1gyq@jessie:~$ curl http://192.168.1.73/led?params=1
{"return_value": 1, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
xe1gyq@jessie:~$ curl http://192.168.1.73/led?params=0
{"return_value": 1, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
```

# Python urllib json

## load

```python
import json
import urllib

url = 'http://192.168.1.73'
output = json.load(urllib.urlopen(url))
print(output)
```

```sh
root@edison:~# python j.py 
{u'hardware': u'esp8266', u'variables': {u'temperature': 24, u'humidity': 40}, u'connected': True, u'id': u'1', u'name': u'esp8266'}
```

## loads

```python
import urllib, json
url = "http://192.168.1.73"
response = urllib.urlopen(url)
data = json.loads(response.read())
print data
```

```sh
root@edison:~# python main.py 
{u'hardware': u'esp8266', u'variables': {u'temperature': 24, u'humidity': 40}, u'connected': True, u'id': u'1', u'name': u'esp8266'}
```

# Python requests

```python
import requests
r = requests.get('http://192.168.1.73')
print r.json()
```

```sh
root@edison:~# python url.py 
{u'hardware': u'esp8266', u'variables': {u'temperature': 24, u'humidity': 40}, u'connected': True, u'id': u'1', u'name': u'esp8266'}
```
