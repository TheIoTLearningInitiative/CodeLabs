#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export APPLE_PID=$$
export APPLE_NAME="Zacatecas"
export APPLE_PATH=$(readlink -f "$0")
export APPLE_DIRECTORY=$(dirname "$APPLE_PATH")

LOCAL_INSTITUTION_NAME=`Name.sh`

LOCAL_LANGUAGE[0]="english"
LOCAL_LANGUAGE[1]="spanish"

# =============================================================================
# Functions
# =============================================================================

chooseLanguage()
{
    rand=$[ $RANDOM % 2 ]
    LOCAL_LANGUAGE=${LOCAL_LANGUAGE[$rand]}
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $APPLE_PID $APPLE_NAME

chooseLanguage

if [ "$LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh on voicerss english \
        "Next Visit, ${LOCAL_INSTITUTION_NAME}"
else
    SpeechSynthetizer.sh on voicerss spanish \
        "Proxima Visita, ${LOCAL_INSTITUTION_NAME}"
fi

#StreamAudio.sh "Triki" "1.0" "$SPEECH_MP3"
#StreamAudio.sh "Tran" "1.0" "$SPEECH_MP3"
#StreamAudio.sh "Juum" "1.0" "$SPEECH_MP3"
#StreamAudio.sh "Eek'" "1.0" "$SPEECH_MP3"

# End of File
