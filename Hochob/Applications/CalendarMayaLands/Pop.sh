#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export POP_PID=$$
export POP_NAME="Pop"
export POP_PATH=$(readlink -f "$0")
export POP_DIRECTORY=$(dirname "$POP_PATH")

# Innovation Week 2017
LOCAL_INSTITUTION_NAME=`Intel Guadalajara`
LOCAL_EVENT_NAME_ENGLISH="Innovation Week 2017"
LOCAL_EVENT_NAME_SPANISH="Semana de Innovación 2017"
LOCAL_PHRASE="The PCI Center of Excellence invites you to attend \
              the PCIE Tech Week at Intel GDC Auditorium this November 7th, 8th and 9th. \
              We will host Senior Principal Engineers, Principal Engineers and Technical Leaders."

# PCIE Tech Week 2017
LOCAL_INSTITUTION_NAME=`Intel Guadalajara`
LOCAL_EVENT_NAME_ENGLISH="PCI Express Tech Week"
LOCAL_EVENT_NAME_SPANISH="Semana de Tecnología PCI Express"

LOCAL_LANGUAGE[0]="english"
LOCAL_LANGUAGE[1]="english"

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

LogPid.sh $POP_PID $POP_NAME

chooseLanguage

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    HostInternal.sh robot $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_ENGLISH}"
else
    HostInternal.sh robot $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_SPANISH}"
fi

# End of File
