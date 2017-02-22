#!/usr/bin/python

import speech_recognition as sr
from pyaudioplay import play

def recognize():

    r = sr.Recognizer()
    m = sr.Microphone()

    try:
        with m as source: r.adjust_for_ambient_noise(source)
        print("Escuchando...")
        play('beep.wav')
        with m as source: audio = r.listen(source)
        print("Enterado! Reconociendo...")
        try:
            value = r.recognize_google(audio, language="es-MX")
            if str is bytes:
                print(u"Dijiste {}".format(value).encode("utf-8"))
            else:
                print("Dijiste {}".format(value))
        except sr.UnknownValueError:
            print("Ups! No entendimos")
        except sr.RequestError as e:
            print("Oh oh! Error en la peticion a Google; {0}".format(e))
    except KeyboardInterrupt:
        pass
