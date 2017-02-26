#! /usr/bin/env python

import os
import random
import time
#Intel MRAA library
import mraa
import alsaaudio
import wave
import random
from creds import *
import requests
import json
import re
import thread
import time

import pyaudio
import wave
import pyupm_grove as grove

from memcache import Client

button = grove.GroveButton(8)

device = "plughw:2,0" # Name of your microphone/soundcard in arecord -L

counter = 0
servers = ["127.0.0.1:11211"]
mc = Client(servers, debug=1)
path = os.path.realpath(__file__).rstrip(os.path.basename(__file__))
mGestureTirgger = 0


def internet_on():
    print "Checking Internet Connection"
    try:
        r =requests.get('https://api.amazon.com/auth/o2/token')
	print "Connection OK"
        return True
    except:
	print "Connection Failed"
    	return False

	
def gettoken():
	token = mc.get("access_token")
	refresh = refresh_token
	if token:
		return token
	elif refresh:
		payload = {"client_id" : Client_ID, "client_secret" : Client_Secret, "refresh_token" : refresh, "grant_type" : "refresh_token", }
		url = "https://api.amazon.com/auth/o2/token"
		r = requests.post(url, data = payload)
		resp = json.loads(r.text)
		mc.set("access_token", resp['access_token'], 3570)
		return resp['access_token']
	else:
		return False
		

def alexa():
	url = 'https://access-alexa-na.amazon.com/v1/avs/speechrecognizer/recognize'
	headers = {'Authorization' : 'Bearer %s' % gettoken()}
	d = {
   		"messageHeader": {
       		"deviceContext": [
           		{
               		"name": "playbackState",
               		"namespace": "AudioPlayer",
               		"payload": {
                   		"streamId": "",
        			   	"offsetInMilliseconds": "0",
                   		"playerActivity": "IDLE"
               		}
           		}
       		]
		},
   		"messageBody": {
       		"profile": "alexa-close-talk",
       		"locale": "en-us",
       		"format": "audio/L16; rate=16000; channels=1"
   		}
	}
	with open(path+'recording.wav') as inf:
		files = [
				('file', ('request', json.dumps(d), 'application/json; charset=UTF-8')),
				('file', ('audio', inf, 'audio/L16; rate=16000; channels=1'))
				]	
		r = requests.post(url, headers=headers, files=files)
		print(r)
	if r.status_code == 200:
		for v in r.headers['content-type'].split(";"):
			if re.match('.*boundary.*', v):
				boundary =  v.split("=")[1]
		data = r.content.split(boundary)
		for d in data:
			if (len(d) >= 1024):
				audio = d.split('\r\n\r\n')[1].rstrip('--')
		with open(path+"response.mp3", 'wb') as f:
			f.write(audio)
		os.system('mpg123 -q {}1sec.mp3 {}response.mp3'.format(path, path))
	else:
		for x in range(0, 3):
			time.sleep(.2)
			time.sleep(.2)

def start():

	CHUNK = 1024
	FORMAT = pyaudio.paInt16
	CHANNELS = 1
	RATE = 16000
	RECORD_SECONDS = 2
	WAVE_OUTPUT_FILENAME = path+'recording.wav'

	p = pyaudio.PyAudio()

	stream = p.open(format=FORMAT,
	                channels=CHANNELS,
	                rate=RATE,
	                input=True,
	                frames_per_buffer=CHUNK)

	print("Recording...")

	frames = []

	for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
	    data = stream.read(CHUNK)
	    frames.append(data)

	print("Done!")

	stream.stop_stream()
	stream.close()
	p.terminate()

	wf = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
	wf.setnchannels(CHANNELS)
	wf.setsampwidth(p.get_sample_size(FORMAT))
	wf.setframerate(RATE)
	wf.writeframes(b''.join(frames))
	wf.close()

	
	alexa()

	
def camera_gesture_thread( threadName, delay):
	global mGestureTirgger
	mGestureTirgger = 1
	time.sleep(5)
	mGestureTirgger = 1 
		

if __name__ == "__main__":

	while internet_on() == False:
		print "."
	token = gettoken()
	os.system('mpg123 -q {}1sec.mp3 {}hello.mp3'.format(path, path))

	start()
	
