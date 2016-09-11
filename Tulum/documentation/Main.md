# Main

## cleanup

```sh
root@edison:~# cd openstack
root@edison:~/openstack# git reset --hard
HEAD is now at 873c8c4 Update documentation/Introduction.md
root@edison:~/openstack# git clean -fx
...
root@edison:~/openstack# cd device
root@edison:~/openstack/device# 
```

## missing credentials

```sh
root@edison:~/openstack/device# python main.py 
Traceback (most recent call last):
  File "main.py", line 53, in <module>
    credential = credentials.get("telegram", "token")
  File "/usr/lib/python2.7/ConfigParser.py", line 607, in get
    raise NoSectionError(section)
ConfigParser.NoSectionError: No section: 'telegram'
Exiting
Exception KeyError: KeyError(-1217222912,) in <module 'threading' from '/usr/lib/python2.7/threading.pyc'> ignored
root@edison:~/openstack/device# 
```

## credentials setup

```sh
root@edison:~/openstack/device# nano credentials.config
[telegram]
token=227111423:.......................................
root@edison:~/openstack/device# 
```

## directory structure

```sh
root@edison:~/openstack/device# ls
credentials.config  main.py            requirements.pip
iot101inc.py        requirements.opkg  setup.sh
root@edison:~/openstack/device# 
```

## main execution

```sh
root@edison:~/openstack/device# python main.py 
/usr/lib/python2.7/site-packages/urllib3/util/ssl_.py:318: SNIMissingWarning: An HTTPS request has been made, but the SNI (Subject Na.
  SNIMissingWarning
/usr/lib/python2.7/site-packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true SSLContext object is not available. This p.
  InsecurePlatformWarning
/usr/lib/python2.7/site-packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true SSLContext object is not available. This p.
  InsecurePlatformWarning
  
Go to section "main interaction through telegram bot"
  
^Z
[1]+  Stopped(SIGTSTP)        python main.py
root@edison:~/openstack/device# 
```

## main interaction through telegram bot

Interact with your Bot using the Web Telegram Org Application

## main source code

```python
#!/usr/bin/python

import atexit
import ConfigParser
import signal
import sys
import time

import pyupm_grove as grove
import pyupm_grovespeaker as upmGrovespeaker
import pyupm_i2clcd as lcd

from telegram.ext import Updater, CommandHandler, MessageHandler, Filters
from wit import Wit

credentials = ConfigParser.ConfigParser()
credentialsfile = "credentials.config"
credentials.read(credentialsfile)

button = grove.GroveButton(8)
display = lcd.Jhd1313m1(0, 0x3E, 0x62)
light = grove.GroveLight(0)
relay = grove.GroveRelay(2)

def functionLight(bot, update):
    luxes = light.value()
    bot.sendMessage(update.message.chat_id, text='Light ' + str(luxes))

def functionMessage(bot, update):
    bot.sendMessage(update.message.chat_id, text=message)

def functionRelay(bot, update):
    relay.on()
    time.sleep(2)
    relay.off()
    bot.sendMessage(update.message.chat_id, text='Relay Used!')

def functionEcho(bot, update):
    bot.sendMessage(update.message.chat_id, text=update.message.text)

def SIGINTHandler(signum, frame):
	raise SystemExit

def exitHandler():
	print "Exiting"
	sys.exit(0)

atexit.register(exitHandler)
signal.signal(signal.SIGINT, SIGINTHandler)

if __name__ == '__main__':

    credential = credentials.get("telegram", "token")
    updater = Updater(credential)
    dp = updater.dispatcher

    dp.add_handler(CommandHandler("light", functionLight))
    dp.add_handler(CommandHandler("message", functionMessage))
    dp.add_handler(CommandHandler("relay", functionRelay))
    dp.add_handler(MessageHandler([Filters.text], functionEcho))

    updater.start_polling()

    message = "Hi! I'm Main!"

    while True:

        luxes = light.value()
        luxes = int(luxes)    
        display.setColor(luxes, luxes, luxes)
        display.clear()

        if button.value() is 1:
            display.setColor(255, 0, 0)
            display.setCursor(0,0)
            display.write(str(message))
            relay.on()
            time.sleep(1)
            relay.off()

    updater.idle()
```