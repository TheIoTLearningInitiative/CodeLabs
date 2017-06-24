#!/usr/bin/env python
# -*- coding: utf-8 -*- 

import subprocess
import sys
import VoiceRssLib

print 'Number of arguments:', len(sys.argv), 'arguments.'
print 'Argument List:', str(sys.argv)

language = str(sys.argv[1])
text = str(sys.argv[3])
file = str(sys.argv[2])

voice = VoiceRssLib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a07',
<<<<<<< HEAD
	'hl': language,
        'src': text,
=======
	'hl': 'en-us',
        'src': 'Hello World Python Text To Speech X Platform',
>>>>>>> a16d1bed6021bca0262e50d40f0d807e1b02a2b7
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
})

newFile = open (file, "w+")
newFile.write(voice['response'])
newFile.close()

# player = subprocess.Popen(["aplay", file])

# End Of File
