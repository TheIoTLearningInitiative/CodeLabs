#!/usr/bin/python

import ConfigParser
import json
import os
import re
import speech_recognition as sr

from xsound import recordAudio
from xsound import playAudio

class xSpeechRecognition(object):

    def __init__(self, engine='witai', wavfile='/files/sound.wav'):
        self.directorycurrent = os.path.dirname(os.path.realpath(__file__))
        self.wavfile = self.directorycurrent + wavfile
        print self.wavfile
        self.engine = engine

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
        if self.engine == 'witai':
            WIT_AI_KEY = "7LUFYD6ZZKLYSI652C75J4UZWTIMJIPX"
            try:
                print("Wit.ai thinks you said " + self.r.recognize_wit(self.audio, key=WIT_AI_KEY))
            except sr.UnknownValueError:
                print("Wit.ai could not understand audio")
            except sr.RequestError as e:
                print("Could not request results from Wit.ai service; {0}".format(e))
        if self.engine == 'sphinx':
            try:
                print("Sphinx thinks you said " + self.r.recognize_sphinx(self.audio))
            except sr.UnknownValueError:
                print("Sphinx could not understand audio")
            except sr.RequestError as e:
                print("Sphinx error; {0}".format(e))
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
