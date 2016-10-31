import speech_recognition as sr
import pyaudio
import wit

r = sr.Recognizer()
with sr.Microphone() as source:
    r.adjust_for_ambient_noise(source) # listen for 1 second to calibrate the energy threshold for ambient noise levels
    print("Say something!")
    audio = r.listen(source)

    WIT_AI_KEY = "CDMAGXSNZ2LXGI7AANPQI442KCZ2DFTQ"
try:
    print("Wit.ai thinks you said " + r.recognize_wit(audio,key=WIT_AI_KEY))
except sr.UnknownValueError:
    print("Wit.ai could not understand audio")
except sr.RequestError:
    print("Could not request results from Wit.ai service")
