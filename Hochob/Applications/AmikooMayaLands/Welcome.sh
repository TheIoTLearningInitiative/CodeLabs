#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export WO_PID=$$
export WO_NAME="Wo"
export WO_PATH=$(readlink -f "$0")
export WO_DIRECTORY=$(dirname "$WO_PATH")

LOCAL_INSTITUTION_NAME="México"
LOCAL_EVENT_NAME_ENGLISH="Intel Experience Day 2017"
LOCAL_EVENT_NAME_SPANISH="Experiencia Intel 2017"

LOCAL_LANGUAGE[0]="english"
LOCAL_LANGUAGE[1]="spanish"

# =============================================================================
# Functions
# =============================================================================

Tbd

# =============================================================================
# Main
# =============================================================================

LogPid.sh $WO_PID $WO_NAME

HostExternal.sh robot spanish "${LOCAL_INSTITUTION_NAME}" "${LOCAL_EVENT_NAME_SPANISH}"

# End of File
