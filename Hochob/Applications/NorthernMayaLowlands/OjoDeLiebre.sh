#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export OJODELIEBRE_PID=$$
export OJODELIEBRE_PATH=$(readlink -f "$0")
export OJODELIEBRE_DIRECTORY=$(dirname "$OJODELIEBRE_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE
LOCAL_VOLUME=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_DEVICE_VOLUME
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE=$HOCHOB_SERVER_APPLICATIONS_NORTHERN_MAYA_LOWLANDS_TTS_ENGINE

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

StreamAudio.sh $LOCAL_DEVICE $LOCAL_VOLUME "$AREA_NORTHERN_MAYA_LOWLANDS/OjoDeLiebre.mp3"

# End of File
