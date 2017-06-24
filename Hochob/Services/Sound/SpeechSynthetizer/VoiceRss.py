# -*- coding: utf-8 -*- 

import subprocess
import VoiceRssLib

voice = VoiceRssLib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a07',
	'hl': 'en-us',
        'src': 'Hello World Python Text To Speech X Platform',
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
})

file = 'audio.wav'

newFile = open (file, "wb")
newFile.write(voice['response'])
newFile.close()

player = subprocess.Popen(["aplay", file])
