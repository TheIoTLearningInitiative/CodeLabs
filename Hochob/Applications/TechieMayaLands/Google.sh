#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export GOOGLE_PID=$$
export GOOGLE_NAME="Zacatecas"
export GOOGLE_PATH=$(readlink -f "$0")
export GOOGLE_DIRECTORY=$(dirname "$GOOGLE_PATH")

LOCAL_DEVICE[0]="Triki"
LOCAL_DEVICE[1]="Tran"
LOCAL_DEVICE[2]="Juum"
LOCAL_DEVICE[3]="Eek'"

# =============================================================================
# Functions
# =============================================================================

chooseDevice()
{
    rand=$[ $RANDOM % 4 ]
    LOCAL_DEVICE=${LOCAL_DEVICE[$rand]}
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $GOOGLE_PID $GOOGLE_NAME

if [ "$LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh on espeak english \
        "Happy Halloween"
else
    SpeechSynthetizer.sh on espeak spanish \
        "Feliz dia de muertos"
fi

Stream.sh $LOCAL_DEVICE "1.0" "$SPEECH_MP3"

# See implement WindRiver.sh logic, maybe Season service?
# Choose Random Audio from Directory

# End of File
