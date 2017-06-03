# Server Architecture

- Software Services
- Software Applications
- Hardware Amikoo
- Hardware Stations

# Software Services

> Software functionality

- Automation
- Calendar
- __Camera__
- Communications
- LupeRobot
- __Image__
- Messaging
  - Telegram
- Motion
- __Sound__
- Stream
- Usb
- __Video__

# Software Applications

- Corporate
  - Image
    - Main
  - Video
    - Main
- VisitorsCenter
  - Image
  - LupeRobot
  - Music
  - Sound
    - Stations
- Visitors
  - Camera
  - Drawing
  - Video

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

- Corporate
  - Image
  - Video
- VisitorsCenter
  - Image
  - LupeRobot
  - Music
  - Sound
    - Stations
- Visitors
  - [Name of Institution]
    - Camera
    - Drawing
    - Video

# Hardware Amikoo

- Services
- Camera
- Sound
  - Speaker
  - Microphone

# Hardware Stations

A set of devices:

- Display Device
- Streaming Device

# ToDo

- Check Arguments
- Kill Daemon
- Pulse Audio Interfaces Init? Where
- How to abstract running of Apps? Should we export Services under Main.sh instead? under .profile?
  - source ~/CodeLabs/Hochob/Main.sh
  - Remove ". ~/CodeLabs/Hochob/Main.sh" from the scripts?
- HochobMedia automatic creation of estructure
  - under Main.sh test $DIR