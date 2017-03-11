import voicerssurllib
import subprocess

from pyaudioplay import play

def speech(text):

    voice = voicerssurllib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a70',
	'hl': 'es-mx',
	'src': text,
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
    })

    file = 'voicerss.wav'
    newFile = open (file, "wb")
    newFile.write(voice['response'])
    newFile.close()
    play(file)
