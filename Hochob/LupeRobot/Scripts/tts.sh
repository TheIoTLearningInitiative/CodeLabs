#!/bin/bash
mplayer -ao alsa -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=$*" > /dev/null 2>&1
