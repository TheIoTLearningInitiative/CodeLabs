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

LOCAL_SEASON="Halloween"

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
    SpeechSynthetizer.sh off espeak english \
        "Happy Halloween"
else
    SpeechSynthetizer.sh off espeak spanish \
        "Feliz dia de muertos"
fi

LOCAL_SOUND=`find $SEASON/$LOCAL_SEASON/ -type f | shuf -n 1`
Stream.sh "$LOCAL_DEVICE" "1.0" "$LOCAL_SOUND"
#Stream.sh "$LOCAL_DEVICE" "1.0" "$SPEECH_MP3"

# See implement WindRiver.sh logic, maybe Season service?
# Choose Random Audio from Directory

# End of File
