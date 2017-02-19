#!/usr/bin/python

import pyaudio
import wave

# Define stream chunk
chunk = 1024

#open a wav format music
f = wave.open(r"/usr/share/sounds/alsa/Rear_Center.wav","rb")

# Instantiate PyAudio
p = pyaudio.PyAudio()

# Open stream
stream = p.open(format = p.get_format_from_width(f.getsampwidth()),
		channels = f.getnchannels(),
		rate = f.getframerate(),
		output = True)

# Read data
data = f.readframes(chunk)


# Play stream
while data:
stream.write(data)
data = f.readframes(chunk)

# Stop stream
stream.stop_stream()
stream.close()

# Close PyAudio
p.terminate()
