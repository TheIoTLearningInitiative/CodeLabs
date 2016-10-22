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

# App

```sh
root@edison:~# git clone https://github.com/marcoschwartz/aREST-app-example.git
Cloning into 'aREST-app-example'...
remote: Counting objects: 11, done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 11 (delta 0), reused 11 (delta 0), pack-reused 0
Unpacking objects: 100% (11/11), done.
Checking connectivity... done.
root@edison:~# cd aREST-app-example/
root@edison:~/aREST-app-example# ls
README.md  curl.php  interface.html  jquery-2.0.3.min.js  script.js  style.css
root@edison:~/aREST-app-example# 
```

```sh
user@ẁorkstation:~$ sudo apt-get update
user@ẁorkstation:~$ sudo apt-get install -y apache2
user@ẁorkstation:~$ sudo apt-get -y install php5 libapache2-mod-php5
```

```sh
user@ẁorkstation:~$ npm update -g express  body-parser
```

```sh
user@ẁorkstation:~$ npm isntall socket.io --save
user@ẁorkstation:~$ npm install express --save
user@ẁorkstation:~$ npm install johnny-five --save
user@ẁorkstation:~$ npm install -g bower
user@ẁorkstation:~$ bower install angularjs --save --allow-root
user@ẁorkstation:~$ bower install socket.io-client --save --allow-root
user@ẁorkstation:~$ 
user@ẁorkstation:~$ 
user@ẁorkstation:~$ 
```
