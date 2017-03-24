#!/usr/bin/python

import speech_recognition as sr
import pyttsx
import time
import os

from PyAudioPlay import play

r = sr.Recognizer()
m = sr.Microphone()

os.system("pacmd set-default-source 2")

try:
    output = "Un momento de silencio por favor!"
    os.system("echo \"" + output + "\" | espeak -v es-la -a 200")
    time.sleep(2)
    output = "Estoy configurando mi sistema para poder reconocer las palabras que me digas"
    os.system("echo \"" + output + "\" | espeak -v es-la -a 200")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    output = "Di algo en los proximos 5 segundos, despues de sonar dos pitidos"
    os.system("echo \"" + output + "\" | espeak -v es-la -a 200")
    play('beep.wav')
    play('beep.wav')
    with m as source: audio = r.listen(source)
    output = "Lo tengo! Enviando a la nube para su reconocimiento"
    os.system("echo \"" + output + "\" | espeak -v es-la -a 200")
    try:
        value = r.recognize_google(audio, language="es-MX")

        if str is bytes:
            output = (u"Creo que dijiste: {}".format(value).encode("utf-8"))
            print(output)
        else:
            output = ("Creo que dijiste: {}".format(value))
            print(output)
        os.system("echo \"" + output + "\" | espeak -v es-la -a 200")
    except sr.UnknownValueError:
        print("Oops! Didn't catch that")
    except sr.RequestError as e:
        print("Uh oh! Couldn't request results from Google Speech Recognition service; {0}".format(e))
except KeyboardInterrupt:
    pass
