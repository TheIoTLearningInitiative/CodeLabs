#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export DONOTFORGET_PID=$$
export DONOTFORGET_NAME="DoNotForget"
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

AmikooCommunication.sh "Navidad" "Image" "PhotoBoothFirst.jpg"
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    AmikooVoice.sh $LOCAL_LANGUAGE \
        "Do not forget our christmas photo booth at the classroom of the future, check your email for more information"
else
    AmikooVoice.sh $LOCAL_LANGUAGE \
        "No olvides tu fotografía navideña en el aula del futuro, mas información en tu correo electrónico"
fi
sleep 3
AmikooCommunication.sh "Navidad" "Image" "Stop"

# End of File
