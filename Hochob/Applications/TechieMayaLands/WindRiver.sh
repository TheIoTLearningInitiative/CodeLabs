#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export WINDRIVER_PID=$$
export WINDRIVER_NAME="WindRiver"
export WINDRIVER_PATH=$(readlink -f "$0")
export WINDRIVER_DIRECTORY=$(dirname "$WINDRIVER_PATH")

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

LogPid.sh $WINDRIVER_PID $WINDRIVER_NAME

chooseLanguage
Host.sh $LOCAL_LANGUAGE

# End of File
