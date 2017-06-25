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
#SpeechSynthetizer.sh on espeak english \
#    "Nel Pastel Simona La Mona"
#MemoriesAudio.sh "${MAPIMI_NAME}"

#Stream.sh "Eek'" "1.0" "$FFMPEG_IMAGE_AUDIO"

Eog.sh $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM &

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh off espeak english \
    "To be written"
else
    SpeechSynthetizer.sh off espeak spanish \
    "Me da mucho gusto conocerlos y que hayan venido a Intel. \
    Regresen pronto futuras y futuros ingenieros"
fi

Stream.sh "Eek'" "1.0" "$SPEECH_MP3"

# End of File
