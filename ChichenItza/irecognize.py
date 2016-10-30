#!/usr/bin/python

import ConfigParser
import json
import os
import re
import speech_recognition as sr

from isound import recordAudio
from isound import playAudio

class xSpeechRecognition(object):

    def __init__(self, engine='google', wavfile='sound.wav'):
        self.directorycurrent = os.path.dirname(os.path.realpath(__file__))
        self.engine = engine
        self.wavfile = wavfile

        self.r = sr.Recognizer()
        with sr.WavFile(self.wavfile) as self.source:
            self.audio = self.r.record(self.source)

    def fileset(self, wavfile):
        self.wavfile = wavfile

    def recognize(self):
        if self.engine == 'google':
            try:
                from pprint import pprint
                print("Google Speech Recognition")
                return self.r.recognize_google(self.audio, show_all=False)
            except sr.UnknownValueError:
                print("Google Speech Recognition could not understand audio")
            except sr.RequestError as e:
                print("Could not request results from Google Speech Recognition service; {0}".format(e))
        return None

def recognizeSpeech():

    recordAudio()
    playAudio()
    speechrecognition = xSpeechRecognition()
    return speechrecognition.recognize()

if __name__ == "__main__":

    recognizeSpeech()
    # xSpeechRecognition = xSpeechRecognition()
    # print xSpeechRecognition.recognize()

# End of File
