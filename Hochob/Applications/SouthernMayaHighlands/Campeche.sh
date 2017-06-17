#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CAMPECHE_PID=$$
export CAMPECHE_NAME="Campeche"
export CAMPECHE_PATH=$(readlink -f "$0")
export CAMPECHE_DIRECTORY=$(dirname "$CAMPECHE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $CAMPECHE_PID $CAMPECHE_NAME

#Memories.sh "1" "off" "${BAJACALIFORNIANORTE_NAME}"
#Vlc.sh on "$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO"
#LOCAL_INSTITUTION=`Name.sh`
#ConvertText.sh "Bienvenidos ${LOCAL_INSTITUTION}"
#eog -f $FSWEBCAM_IMAGE_TEXT &
Eog.sh $FSWEBCAM_IMAGE_TEXT &
sleep 1
Mpg123.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/Campeche.mp3"

KillApp.sh "mpg123"
KillApp.sh "eog"

# End of File
