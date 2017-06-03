#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

# Hochob Server Root Directory

cd ~/CodeLabs/Hochob/
export HOCHOB_ROOT=`pwd`

# Hochob Server Services

export HOCHOB_SERVER_SERVICES=$HOCHOB_ROOT/Services/

export HOCHOB_SERVER_SERVICES_CAMERA=$HOCHOB_SERVER_SERVICES/Camera/
export HOCHOB_SERVER_SERVICES_IMAGE=$HOCHOB_SERVER_SERVICES/Image/
export HOCHOB_SERVER_SERVICES_SOUND=$HOCHOB_SERVER_SERVICES/Sound/
export HOCHOB_SERVER_SERVICES_SOUND_PX=$HOCHOB_SERVER_SERVICES_SOUND/Play/
export HOCHOB_SERVER_SERVICES_SOUND_SS=$HOCHOB_SERVER_SERVICES_SOUND/SpeechSynthetizer/
export HOCHOB_SERVER_SERVICES_STREAM=$HOCHOB_SERVER_SERVICES/Stream/
export HOCHOB_SERVER_SERVICES_STREAM_S2C=$HOCHOB_SERVER_SERVICES_STREAM/Stream2Chromecast/
export HOCHOB_SERVER_SERVICES_VIDEO=$HOCHOB_SERVER_SERVICES/Video/

# Hochob Server Media Source

export HOCHOB_MEDIA=/tmp/HochobMediaSource/

export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM=$HOCHOB_SERVER_MEDIA_IMAGE_VISITORS/Fswebcam/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_IMAGE_VISITORS_FSWEBCAM/hbsCameraFswImage.jpg

export HOCHOB_SERVER_MEDIA_MUSIC=$HOCHOB_MEDIA/Music/

export HOCHOB_SERVER_MEDIA_SOUND=$HOCHOB_MEDIA/Sound/
export HOCHOB_SERVER_MEDIA_SOUND_STREAM=$HOCHOB_SERVER_MEDIA_SOUND/Stream
export HOCHOB_SERVER_MEDIA_SOUND_STREAM_ESPEAK=$HOCHOB_SERVER_MEDIA_SOUND_STREAM/Espeak/
export HOCHOB_SERVER_MEDIA_SOUND_STREAM_ESPEAK_OUTPUT=$HOCHOB_SERVER_MEDIA_SOUND_STREAM_ESPEAK/hbsSoundSsEspeakOutput.wav
export HOCHOB_SERVER_MEDIA_SOUND_LUPEROBOT=$HOCHOB_SERVER_MEDIA_SOUND/LupeRobot/
export HOCHOB_SERVER_MEDIA_SOUND_VISITORSCENTER=$HOCHOB_SERVER_MEDIA_SOUND/VisitorsCenter/

export HOCHOB_SERVER_MEDIA_IMAGE=$HOCHOB_MEDIA/Image/
export HOCHOB_SERVER_MEDIA_IMAGE_CORPORATE=$HOCHOB_SERVER_MEDIA_IMAGE/Corporate/
export HOCHOB_SERVER_MEDIA_IMAGE_DRAWING=$HOCHOB_SERVER_MEDIA_IMAGE/Drawing/
export HOCHOB_SERVER_MEDIA_IMAGE_VISITORSCENTER=$HOCHOB_SERVER_MEDIA_IMAGE/VisitorsCenter/
export HOCHOB_SERVER_MEDIA_IMAGE_VISITORS=$HOCHOB_SERVER_MEDIA_IMAGE/Visitors/

export HOCHOB_SERVER_MEDIA_VIDEO=$HOCHOB_MEDIA/Video/
export HOCHOB_SERVER_MEDIA_VIDEO_CORPORATE=$HOCHOB_SERVER_MEDIA_VIDEO/Corporate/
export HOCHOB_SERVER_MEDIA_VIDEO_VISITORSCENTER=$HOCHOB_SERVER_MEDIA_VIDEO/VisitorsCenter/
export HOCHOB_SERVER_MEDIA_VIDEO_VISITORS=$HOCHOB_SERVER_MEDIA_VIDEO/Visitors/

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
