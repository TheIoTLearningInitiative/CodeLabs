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

# Media Repository: Official / Mirror

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
      - Lupe Robot Moving
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