#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

# Hochob Root Directory

cd ~/CodeLabs/Hochob/
export HOCHOB_ROOT=`pwd`

# Hochob Services

export HOCHOB_SERVICES=$HOCHOB_ROOT/Services/

export HOCHOB_SERVICES_CAMERA=$HOCHOB_SERVICES/Camera/
export HOCHOB_SERVICES_IMAGE=$HOCHOB_SERVICES/Image/
export HOCHOB_SERVICES_SOUND=$HOCHOB_SERVICES/Sound/
export HOCHOB_SERVICES_SOUND_SS=$HOCHOB_SERVICES_SOUND/SpeechSynthetizer/
export HOCHOB_SERVICES_STREAM=$HOCHOB_SERVICES/Stream/
export HOCHOB_SERVICES_STREAM_S2C=$HOCHOB_SERVICES_STREAM/Stream2Chromecast/
export HOCHOB_SERVICES_VIDEO=$HOCHOB_SERVICES/Video/

# Hochob Media Mirror

export HOCHOB_MEDIA=/tmp/HochobMedia/

export HOCHOB_MEDIA_MUSIC=$HOCHOB_MEDIA/Music/

export HOCHOB_MEDIA_SOUND=$HOCHOB_MEDIA/Sound/
export HOCHOB_MEDIA_SOUND_STREAM=$HOCHOB_MEDIA_SOUND/Stream
export HOCHOB_MEDIA_SOUND_STREAM_ESPEAK=$HOCHOB_MEDIA_SOUND_STREAM/Espeak/
export HOCHOB_MEDIA_SOUND_STREAM_ESPEAK_OUTPUT=$HOCHOB_MEDIA_SOUND_ESPEAK/hbsSoundSsEspeakOutput.wav
export HOCHOB_MEDIA_SOUND_LUPEROBOT=$HOCHOB_MEDIA_SOUND/LupeRobot/
export HOCHOB_MEDIA_SOUND_VISITORSCENTER=$HOCHOB_MEDIA_SOUND/VisitorsCenter/

export HOCHOB_MEDIA_IMAGE=$HOCHOB_MEDIA/Image/
export HOCHOB_MEDIA_IMAGE_CORPORATE=$HOCHOB_MEDIA_IMAGE/Corporate/
export HOCHOB_MEDIA_IMAGE_DRAWING=$HOCHOB_MEDIA_IMAGE/Drawing/
export HOCHOB_MEDIA_IMAGE_VISITORSCENTER=$HOCHOB_MEDIA_IMAGE/VisitorsCenter/
export HOCHOB_MEDIA_IMAGE_VISITORS=$HOCHOB_MEDIA_IMAGE/Visitors/
export HOCHOB_MEDIA_IMAGE_VISITORS_FSWEBCAM=$HOCHOB_MEDIA_IMAGE_VISITORS/Fswebcam/
export HOCHOB_MEDIA_IMAGE_VISITORS_FSWEBCAM_IMAGE=$HOCHOB_MEDIA_IMAGE_VISITORS_FSWEBCAM/hbsCameraFswImage.jpg

export HOCHOB_MEDIA_VIDEO=$HOCHOB_MEDIA/Video/
export HOCHOB_MEDIA_VIDEO_CORPORATE=$HOCHOB_MEDIA_VIDEO/Corporate/
export HOCHOB_MEDIA_VIDEO_VISITORSCENTER=$HOCHOB_MEDIA_VIDEO/VisitorsCenter/
export HOCHOB_MEDIA_VIDEO_VISITORS=$HOCHOB_MEDIA_VIDEO/Visitors/

# =============================================================================
# Functions
# =============================================================================

# Institution Identification through Google Calendar API
# If Google Calendar entry is registered then naming convention is
# YYYYMMDD-HHMMSS-InstitutionName
# If not, naming convention is
# YYYYMMDD-HHMMSS

institutionIdentification () { 
  # If Institution Identification
    # 
  # else
    # 
  echo "Tbd"
}

# =============================================================================
# Main
# =============================================================================

# End of File
