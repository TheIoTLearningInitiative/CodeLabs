#!/usr/bin/python

import speech_recognition as sr
import pyttsx
import time
import os

r = sr.Recognizer()
m = sr.Microphone()

e = pyttsx.init()

try:
    print("A moment of silence, please...")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    print("Say something!")
    with m as source: audio = r.listen(source)
    print("Got it! Now to recognize it...")
    try:
        value = r.recognize_google(audio)

        if str is bytes:
            output = (u"I think you said: {}".format(value).encode("utf-8"))
            print(output)
        else:
            output = ("I think you said: {}".format(value))
            print(output)
        e.say(output)
        e.runAndWait()
    except sr.UnknownValueError:
        print("Oops! Didn't catch that")
    except sr.RequestError as e:
        print("Uh oh! Couldn't request results from Google Speech Recognition service; {0}".format(e))
except KeyboardInterrupt:
    pass
