#!/usr/bin/python

import speech_recognition as sr

r = sr.Recognizer()
m = sr.Microphone()

try:
    print("A moment of silence, please...")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    print("Say something!")
    with m as source: audio = r.listen(source)
    print("Got it! Now to recognize it...")
    WIT_AI_KEY = "V3JL4FMYQMJEJQGBOVW5WAMUHIUPQ3SI"
    try:
        value = r.recognize_wit(audio, key=WIT_AI_KEY)

        if str is bytes:
            print(u"You said {}".format(value).encode("utf-8"))
        else:
            print("You said {}".format(value))
    except sr.UnknownValueError:
        print("Oops! Didn't catch that")
    except sr.RequestError as e:
        print("Uh oh! Couldn't request results from Wit.ai service; {0}".format(e))
except KeyboardInterrupt:
    pass
