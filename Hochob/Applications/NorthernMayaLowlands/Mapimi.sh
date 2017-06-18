#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MAPIMI_PID=$$
export MAPIMI_NAME="Mapimi Application"
export MAPIMI_PATH=$(readlink -f "$0")
export MAPIMI_DIRECTORY=$(dirname "$MAPIMI_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

#Memories.sh "40" "on" "${MAPIMI_NAME}"
#Espeak.sh off spanish "Nel Pastel Simona La Mona"
#MemoriesAudio.sh "${MAPIMI_NAME}"

#Stream.sh "Eek'" "1.0" "$FFMPEG_VIDEO_AUDIO"

Eog.sh $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM &

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Espeak.sh off english \
    "To be written"
else
    Espeak.sh off spanish \
    "Me da mucho gusto conocerlos y que hayan venido a Intel. \
    Regresen pronto futuros Ingenieros de  ${LOCAL_INSTITUTION}"
fi

Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"

kill -- -$(ps -o pgid=$MAPIMI_PID | grep -o '[0-9]*')

# End of File
