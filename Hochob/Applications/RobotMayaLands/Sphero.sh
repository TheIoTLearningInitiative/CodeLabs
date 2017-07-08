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

LOCAL_INSTITUTION_NAME=`Name.sh`
LOCAL_EVENT_NAME_ENGLISH="Innovation Week 2017"
LOCAL_EVENT_NAME_SPANISH="Semana de Innovación 2017"

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

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Host.sh $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_ENGLISH}"
else
    Host.sh $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_SPANISH}"
fi

# End of File
