#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import random
import time
import unidecode
import unicodedata

with open("SopaDeLetras.txt") as f:
    lines = f.readlines()
    random.shuffle(lines)
    f.close()
with open("SopaDeLetras.rnd", "w") as f:
    f.writelines(lines)
    for line in lines:
        line = line.rstrip('\r\n')
        print line
        os.system('mosquitto_pub -h 10.215.56.158 -p 1883 -q 2 -t amikoo/sound/speechsynthetizer/decir -m "' + line + '"')
        time.sleep(10)
    f.close()

