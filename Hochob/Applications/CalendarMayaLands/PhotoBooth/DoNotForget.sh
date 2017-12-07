#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export DONOTFORGET_PID=$$
export DONOTFORGET_NAME="Sotz"
export DONOTFORGET_PATH=$(readlink -f "$0")
export DONOTFORGET_DIRECTORY=$(dirname "$DONOTFORGET_PATH")

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

LogPid.sh $DONOTFORGET_PID $DONOTFORGET_NAME

chooseLanguage

AmikooCommunication.sh "Navidad" "Image" "Random"
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    AmikooVoice.sh $LOCAL_LANGUAGE \
        "No olvides tomarte la fotografía en el aula del futuro"
else
    AmikooVoice.sh $LOCAL_LANGUAGE \
        "Do not forget our photo booth at the classroom of the future"
fi
sleep 3
AmikooCommunication.sh "Drones" "Image" "Stop"

# End of File
