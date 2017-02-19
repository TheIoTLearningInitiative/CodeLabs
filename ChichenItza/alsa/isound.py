#!/usr/bin/python

import commands
import os
import subprocess
import time

import audioop
import pyaudio
import wave

class iSound(object):

    def __init__(self, voicefile="sound.wav"):
        self.directorycurrent = os.path.dirname(os.path.realpath(__file__))
        self.voicefile = voicefile
        self.proc = None

    def filenameset(self, voicefile):
        self.voicefile = voicefile

    def filenameget(self, voicefile):
        return self.voicefile

    def recordstart(self):
        #args = ['arecord', '-t', 'wav', '-D', 'default', '-f', 'S16_LE', '-r', '48000', self.voicefile]
        #args = ['arecord', '-D', 'default', '-t', 'wav', '-f', 'S16_LE', '-r', '48000', self.voicefile]
        #args = ['arecord', '-t', 'wav', '-f', 'S16_LE', '-r', '48000', self.filename]
        args = ['arecord', '-d', '5', self.voicefile]
        proc = subprocess.Popen(args)
        print "PID:", proc.pid
        return proc

    def recordstop(self, proc):
        proc.kill()

    def record(self):

        '''
        time.sleep(1)
        args = ['arecord', '-d', '5', self.voicefile]
        proc = subprocess.Popen(args)
        time.sleep(5)
        '''

        FORMAT = pyaudio.paInt16
        CHANNELS = 2
        RATE = 44100
        CHUNK = 1024
        RECORD_SECONDS = 5
        WAVE_OUTPUT_FILENAME = self.voicefile
 
        audio = pyaudio.PyAudio()
 
        # start Recording
        stream = audio.open(format=FORMAT, channels=CHANNELS,
                        rate=RATE, input=True,
                        frames_per_buffer=CHUNK)
        print "recording..."
        frames = []

        threshold = 1000
        for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
            data = stream.read(CHUNK)
            rms = audioop.rms(data,2)
            if rms > threshold:
                print "I am hearing you now"
            frames.append(data)
        print "finished recording"
 
        # stop Recording
        stream.stop_stream()
        stream.close()
        audio.terminate()
 
        waveFile = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
        waveFile.setnchannels(CHANNELS)
        waveFile.setsampwidth(audio.get_sample_size(FORMAT))
        waveFile.setframerate(RATE)
        waveFile.writeframes(b''.join(frames))
        waveFile.close()


    def play(self):
        #status, output = commands.getstatusoutput("aplay -D default " + self.voicefile)
        status, output = commands.getstatusoutput("aplay " + self.voicefile)
        print output

    def erase(self):
        status, output = commands.getstatusoutput("rm " + self.voicefile)

def recordAudio():
    isound = iSound()
    isound.record()

def playAudio():
    isound = iSound()
    isound.play()

if __name__ == "__main__":

    isound = iSound()

    isound.record()
    isound.play()

    #pid = isound.recordstart()
    #time.sleep(5)
    #isound.recordstop(pid)
    #isound.play()

# End of File
