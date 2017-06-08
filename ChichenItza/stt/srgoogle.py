#!/usr/bin/python

import pyttsx
import speech_recognition as sr

engine = pyttsx.init()

r = sr.Recognizer()
m = sr.Microphone()

try:
    print("A moment of silence, please...")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    print("Say something!")
    with m as source: audio = r.listen(source)
    print("Got it! Now to recognize it...")
    try:
        # recognize speech using Google Speech Recognition
        value = r.recognize_google(audio)

        if str is bytes:
            print(u"You said {}".format(value).encode("utf-8"))
            engine.say(u"You said {}".format(value).encode("utf-8"))
        else:
            print("You said {}".format(value))
            engine.say("You said {}".format(value))
        engine.runAndWait()
    except sr.UnknownValueError:
        print("Oops! Didn't catch that")
    except sr.RequestError as e:
        print("Uh oh! Couldn't request results from Google Speech Recognition service; {0}".format(e))
except KeyboardInterrupt:
    pass
