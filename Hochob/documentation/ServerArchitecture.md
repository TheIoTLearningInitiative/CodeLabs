# Server Architecture

# Services

> Software functionality

- Plex Media Server
- PulseAudio
- Telegram
- VerneMQ

# Applications

> Set of software functionalities.

- Lupe Robot Memories
- Audio
- Camera
- Photography
- USB
- VLC Media Player

# Media Repository: Official & Mirror

- HochobMedia
  - Image
    - Corporate
    - Drawing
    - VisitorsCenter
    - Visitors
      - zZz
  - Music
  - Sound
    - SpeechSynthesizer
    - Espeak
    - LupeRobot
    - VisitorsCenter
  - Video
    - Corporate
    - VisitorsCenter
    - Visitors
      - zZz

# Directory Structure

- Hochob
  - Services
    - Automation
      - HomeAssistant
        - configuration.yaml
    - Camera
      - FS Webcam
        - hbsCameraFswMain.sh
    - Calendar
      - Google Calendar API
        - hbsCalendarGcaMain.py
    - Communications
      - Mqtt
        - VerneMQ
          - vernemq.conf
    - Drawing
    - LupeRobot
      - Virtual
        - Sound
      - Remote
        - Camera
        - Movement
        - Sound
          - Speaker
    - Image
      - Eog
        - hbsImageEogMain.sh
    - Motion
    - Sound
      - PulseAudio
      - SpeechSynthesizer
        - hbsSoundSsEspeakMain.sh [play] [language] [input]
          - Record and Play [on]
          - Record Only [off]
    - Stream
      - Chromecast
        - hbsStreamS2cMain.sh [device] [volume] [file]
    - Usb
    - Video
      - VlcMediaPlayer
  - Applications
    - Audio
    - Photography
    - Video
      - LupeRobot
      - VisitorsCenter
    - Feedback
    - Google Calendar
      - Image Welcome
    - Goodie
    - LupeRobot
      - Scripts
      - Show
      - Skills
      - Virtual
    - Lupe Picture 
      - Lupe Robot Moving through Mqtt
- Amikoo
  - Services
  - Camera
  - Sound
    - Speaker
    - Microphone
  
# Code 

- Hochob
  - hbs
  - hba

# ToDo

- Check Arguments
- Kill Daemon