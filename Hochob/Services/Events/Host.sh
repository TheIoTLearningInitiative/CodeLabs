#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HOST_PID=$$

LOCAL_LANGUAGE="$1"

LOCAL_INSTITUTION_NAME=`Name.sh`

LOCAL_GREETING_ENGLISH[0]="Hi There."
LOCAL_GREETING_ENGLISH[1]="Good morning."
LOCAL_GREETING_ENGLISH[2]="Hi Friend."
LOCAL_GREETING_ENGLISH[3]="Hey."
LOCAL_GREETING_ENGLISH[4]="Hello There."

LOCAL_GREETING_SPANISH[0]="Hola."
LOCAL_GREETING_SPANISH[1]="Buenos dias."
LOCAL_GREETING_SPANISH[2]="Hola Cacerola."
LOCAL_GREETING_SPANISH[3]="Que onda."
LOCAL_GREETING_SPANISH[4]="Espera."

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

chooseGreeting $LOCAL_LANGUAGE

LOCAL_MESSAGE=${LOCAL_GREETING}

Robot.sh lupe/decir \
    ${LOCAL_GREETING}
Robot.sh lupe/decir \
    "Hola Mundo! Uno, Dos, Tres!"

Robot.sh lupe/armfold 1
sleep 2
Robot.sh lupe/armunfold 1

# End of File
