#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SIP_PID=$$
export SIP_NAME="Sip"
export SIP_PATH=$(readlink -f "$0")
export SIP_DIRECTORY=$(dirname "$SIP_PATH")

# Innovation Week 2017
LOCAL_INSTITUTION_NAME="Intel Guadalajara"
LOCAL_EVENT_NAME_ENGLISH="Innovation Week 2017"
LOCAL_EVENT_NAME_SPANISH="Semana de Innovación 2017"

# PCIE Tech Week 2017
LOCAL_INSTITUTION_NAME=`Intel Guadalajara`
LOCAL_EVENT_NAME_ENGLISH="PCI Express Tech Week"
LOCAL_EVENT_NAME_SPANISH="Semana de Tecnología PCI Express"
LOCAL_PHRASE="The PCI Center of Excellence invites you to attend \
              the PCIE Tech Week at Intel GDC Auditorium this November 7th, 8th and 9th. \
              Senior Principal Engineers, Principal Engineers and Technical Leaders \
              will be available to hear your ideas. Please come and share your knowledge so \
              we can provide customer support with excellende and efficiency."

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

LogPid.sh $WINDRIVER_PID $WINDRIVER_NAME

chooseLanguage

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    HostInternal.sh server $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_ENGLISH}"
else
    HostInternal.sh server $LOCAL_LANGUAGE "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_SPANISH}"
fi

# End of File
