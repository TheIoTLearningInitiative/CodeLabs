#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import random
import time
import unidecode

with open("LasCartasSimple.txt") as f:
    lines = f.readlines()
    random.shuffle(lines)
    f.close()
with open("LasCartasSimple.rnd", "w") as f:
    f.writelines(lines)
    for line in lines:
        line = line.rstrip('\r\n')
        print line
        image = line.replace(" ", "") + ".jpg"
        image = unidecode.unidecode(image)
        image = unicodedata.normalize('NFKD', image).encode('ASCII', 'ignore')
        print image
        os.system('mosquitto_pub -h iot.eclipse.org -p 1883 -q 2 -t amikoo/sound/speechsynthetizer/decir -m "' + line + '"')
        time.sleep(3)
    f.close()

os.system('espeak -v es-la -a 100 -p 50 -s 170 -f LasCartasSimple.rnd -w LasCartasSimple.wav')

