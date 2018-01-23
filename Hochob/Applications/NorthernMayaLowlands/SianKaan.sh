#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SIANKAAN_PID=$$
export SIANKAAN_NAME="Mapimi Application"
export SIANKAAN_PATH=$(readlink -f "$0")
export SIANKAAN_DIRECTORY=$(dirname "$SIANKAAN_PATH")


LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_VOLUME=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE_VOLUME
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_TTS_ENGINE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
    " \
     To be written, ${LOCAL_INSTITUTION} \
    "
else
    StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_TTS_ENGINE \
    " \
     Por escribirse, ${LOCAL_INSTITUTION} \
    "
fi

StreamAudio.sh $LOCAL_DEVICE $LOCAL_VOLUME "$AREA_NORTHERN_MAYA_LOWLANDS/SianKaan.mp3" &

Amikoo.sh amikoo/headright 1
sleep .75
Amikoo.sh amikoo/headleft 1
sleep .75

#kill -- -$(ps -o pgid=$SIANKAAN_PID | grep -o '[0-9]*')

# End of File
