import collections
import mraa
import os
import sys
import time

# Import things for pocketsphinx
import pyaudio
import wave
import pocketsphinx as ps
import sphinxbase

led = mraa.Gpio(13)  
led.dir(mraa.DIR_OUT)

print("Starting")
while 1:
		#PocketSphinx parameters
		LMD   = "configuration/4842.lm"
		DICTD = "configuration/4842.dic"
		CHUNK = 1024
		FORMAT = pyaudio.paInt16
		CHANNELS = 1
		RATE = 16000
		RECORD_SECONDS = 3
		PATH = 'vcreg'
		p = pyaudio.PyAudio()
		speech_rec = ps.Decoder(lm=LMD, dict=DICTD)
		#Record audio
		stream = p.open(format=FORMAT, channels=CHANNELS, rate=RATE, input=True, frames_per_buffer=CHUNK)
		print("* recording")
		frames = []
		for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
			data = stream.read(CHUNK)
			frames.append(data)
		print("* done recording")
		stream.stop_stream()
		stream.close()
		p.terminate()
		# Write .wav file
		fn = "test.wav"
		#wf = wave.open(os.path.join(PATH, fn), 'wb')
		wf = wave.open(fn, 'wb')
		wf.setnchannels(CHANNELS)
		wf.setsampwidth(p.get_sample_size(FORMAT))
		wf.setframerate(RATE)
		wf.writeframes(b''.join(frames))
		wf.close()
		
		# Decode speech
		#wav_file = os.path.join(PATH, fn)
		wav_file=fn
		wav_file = file(wav_file,'rb')
		wav_file.seek(44)
		speech_rec.decode_raw(wav_file)
		result = speech_rec.get_hyp()
		recognised= result[0]
		print("* LED section begins")
		print(recognised)
		if recognised == 'ON.':
			led.write(1)
			print "Servo 1"
		else:
			led.write(0)
			print "Servo 0"
		cm = 'espeak "'+recognised+'"'
		os.system(cm)
