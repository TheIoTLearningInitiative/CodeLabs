#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SPHERO_PID=$$
export SPHERO_NAME="Sphero"
export SPHERO_PATH=$(readlink -f "$0")
export SPHERO_DIRECTORY=$(dirname "$SPHERO_PATH")

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

LogPid.sh $SPHERO_PID $SPHERO_NAME

chooseLanguage

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    HostInternal.sh robot $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_ENGLISH}"
else
    HostInternal.sh robot $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_SPANISH}"
fi

# End of File
