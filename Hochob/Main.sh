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
export HOCHOB_SERVER_SERVICES_SOUND_PLAY=$HOCHOB_SERVER_SERVICES_SOUND/Play/
export HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_SERVICES_SOUND/SpeechSynthetizer/
export HOCHOB_SERVER_SERVICES_STREAM=$HOCHOB_SERVER_SERVICES/Stream/
export HOCHOB_SERVER_SERVICES_STREAM_STREAM2CHROMECAST=$HOCHOB_SERVER_SERVICES_STREAM/Stream2Chromecast/
export HOCHOB_SERVER_SERVICES_VIDEO=$HOCHOB_SERVER_SERVICES/Video/

export PATH=$PATH:$HOCHOB_SERVER_SERVICES_CAMERA
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_IMAGE
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND_PLAY
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_STREAM
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_STREAM_STREAM2CHROMECAST
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_VIDEO

# Hochob Server Media Source

export HOCHOB_SERVER_MEDIA_SOURCE=/tmp/HochobServerMediaSource/

export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA=$HOCHOB_SERVER_MEDIA_SOURCE/Camera/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA/Fswebcam
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM/FswebcamImage.jpg

export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE/Image/
export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING=$HOCHOB_SERVER_MEDIA_IMAGE/Drawing/

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND=$HOCHOB_SERVER_MEDIA_SOURCE/Sound/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/SpeechSynthesizer/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/Espeak/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_OUTPUT=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/hbsSoundSsEspeakOutput.wav

export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE/Video/

export HOCHOB_SERVER_MEDIA_SOURCE_VISITORS=$HOCHOB_SERVER_MEDIA_SOURCE/Visitors/

# Hochob Server Media

export HOCHOB_SERVER_MEDIA=$HOME/HochobServerMedia/

export HOCHOB_SERVER_MEDIA_CORPORATE=$HOCHOB_SERVER_MEDIA/Corporate/
export HOCHOB_SERVER_MEDIA_CORPORATE_IMAGE=$HOCHOB_SERVER_MEDIA_CORPORATE/Image/
export HOCHOB_SERVER_MEDIA_CORPORATE_VIDEO=$HOCHOB_SERVER_MEDIA_CORPORATE/Video/

export HOCHOB_SERVER_MEDIA_VISITORSCENTER=$HOCHOB_SERVER_MEDIA/VisitorsCenter/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_IMAGE=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Image/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_MUSIC=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Music/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_SOUND=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Sound/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_VIDEO=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Video/

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
