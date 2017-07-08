#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export WINDRIVER_PID=$$
export WINDRIVER_NAME="WindRiver"
export WINDRIVER_PATH=$(readlink -f "$0")
export WINDRIVER_DIRECTORY=$(dirname "$WINDRIVER_PATH")

LOCAL_GREETING_ENGLISH[0]="Hi There."
LOCAL_GREETING_ENGLISH[1]="Good morning."
LOCAL_GREETING_ENGLISH[2]="Hi Friend."
LOCAL_GREETING_ENGLISH[3]="Hey."
LOCAL_GREETING_ENGLISH[4]="Hello There."

LOCAL_GREETING_SPANISH[0]="Hola."
LOCAL_GREETING_SPANISH[0]="Buenos dias."
LOCAL_GREETING_SPANISH[0]="Hola Cacerola."
LOCAL_GREETING_SPANISH[0]="Que onda."
LOCAL_GREETING_SPANISH[0]="Espera."

# =============================================================================
# Functions
# =============================================================================

chooseGreeting()
{
    LANGUAGE=$1
    rand=$[ $RANDOM % 5 ]
    if [ "$LANGUAGE" = "english" ]; then
        LOCAL_GREETING=${LOCAL_GREETING_ENGLISH[$rand]}
    else
        LOCAL_GREETING=${LOCAL_GREETING_SPANISH[$rand]}
    fi
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $WINDRIVER_PID $WINDRIVER_NAME

LOCAL_MESSAGE=$LOCAL_GREETING

Robot.sh lupe/message $LOCAL_MESSAGE

Robot.sh lupe/armfold 1
sleep 2
Robot.sh lupe/armunfold 1

# End of File
