#!/bin/sh

language=$1
text=$2

script=$(readlink -f "$0")
directoryRoot=$(dirname "$script")
directoryOutput=$directoryRoot/files/

mashapekey=`cat $directoryRoot/configuration/voicerss.mk`
apikey=`cat $directoryRoot/configuration/voicerss.ak`

player=mpg123

test -d $directoryOutput || mkdir $directoryOutput

echo "Text: " $text

curl -k -X POST --include "https://voicerss-text-to-speech.p.mashape.com/?key=${apikey}" \
  -H "X-Mashape-Key: ${mashapekey}" \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'c=mp3' \
  -d 'f=48khz_16bit_stereo' \
  -d "hl=${language}" \
  -d 'r=0' \
  -d "src=${text}" > $directoryOutput/voicerss.sound

$player $directoryOutput/voicerss.sound

# End of File
