# Server Architecture

# Services

- Plex Media Server
- PulseAudio
- Telegram
- VerneMQ

# Applications

- Audio
- Camera
- Photography
- USB
- VLC Media Player

# Media Repository

- HochobMedia
  - Music
  - Sound
    - Espeak
    - LupeRobot
    - VisitorsCenter
  - Image
    - Corporate
    - Drawing
    - VisitorsCenter
    - Visitors
      - zZz
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
    - Sound
      - PulseAudio
      - SpeechSynthesizer
        - hbsSoundSsEspeakMain.sh [on/off] [english/spanish] [input]
          - Record and Play
          - Record Only
    - Stream
      - Chromecast
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
    - Goodie
    - LupeRobot
      - Scripts
      - Show
      - Skills
      - Virtual
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