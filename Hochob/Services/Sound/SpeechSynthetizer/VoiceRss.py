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
	'hl': language,
        'src': text,
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
