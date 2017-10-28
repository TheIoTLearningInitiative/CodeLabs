#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i486_PID=$$
export i486_NAME="i486"
export i486_PATH=$(readlink -f "$0")
export i486_DIRECTORY=$(dirname "$i486_PATH")

LOCAL_SEASON="Intel"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i486_PID $i486_NAME


# Image
Eog.sh "$TRADITION_INTEL/Image/2017-05-08-131711_1920x1080_scrot.png" &
sleep 1

# Sound
Vlc.sh $TRADITION_INTEL/Sound/IntelBong.mp3
#LOCAL_SOUND=`find $TRADITION_INTEL/Sound/ -type f | shuf -n 1`
#Vlc.sh "$LOCAL_SOUND"

sleep 5

KillApp.sh "cvlc"
KillApp.sh "eog"

#SpeechSynthetizer.sh on espeak spanish \
#    "Saludos \
#     "

# End of File
