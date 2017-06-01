# Applications

> Set of software functionalities.

# Home

- Name: (States) Home Welcome Guadalajara Design Center
  - HomeAssistant: Introduccion Bienvenida y Protocolo de Seguridad
  - Station: Chakmool
  - Hochob Media: Official
    - Corporate Image
    - VisitorsCenter Sound Station
  - Services Image, Eog
  - Services Sound, Mpg123
- Name: Home Before Video
  - HomeAssistant: Video Antes del Video
  - Station: Chakmool
  - Hochob Media: Official
    - VisitorsCenter Image Place
    - VisitorsCenter Sound Station
  - Services Image, Eog
  - Services Sound, Mpg123
- Name: Home Lupe Robot Show
  - HomeAssistant: Video Video
  - Station: Chakmool
  - Hochob Media: Official
    - VisitorsCenter Video LupeRobot
  - Services Video, VlcMediaPlayer
  - Services Comms, Mqtt
- Name: Home Welcome Visitors Center
  - HomeAssistant: Video Despues del Video
  - Station: Chakmool
  - Hochob Media: Official
    - VisitorsCenter Image Visitors
      - ??? Assuming the record of images is performed but what if not?
    - VisitorsCenter Sound Station
  - Services Image, Eog
  - Services Sound, Mpg123
- Name: Home Visitors Welcome Memories
  - HomeAssistant:
  - Station: Chakmool
  - Hochob Media: Source
    - Camera Fswebcam
  - Hochob Media: Official
    - VisitorsCenter Image Visitors
  - Services Camera, Fswebcam
- Name: Home Corporate Image Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media: Official
    - Corporate Image
  - Services Image, Eog
- Name: Home Corporate Video Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media: Official
    - Corporate Video
  - Services Video, VlcMediaPlayer
- Name: Home Visitors Center Image Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media: Official
    - VisitorsCenter Image Visitors
  - Services Image, Eog
- Name: Home Visitors Center Video Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media: Official
    - VisitorsCenter Video Visitors
  - Services Video, VlcMediaPlayer

# Media Source 

- Corporate
  - Image
  - Video
- VisitorsCenter
  - Image
  - LupeRobot
  - Music
  - Sound
- Visitors
  - Camera
  - Drawing
  - Video

...

- Home
  - Introduction
    - script.audiosectionone
      - Image, Eog
      - Sound, Mpg123
  - Video
    - script.audiosectiontwo
      - Image, Feh
      - Sound, Mpg123
      - Comms, Mqtt
    - switch.luperobot
      - /home/hochob/CodeLabs/Hochob/LupeRobot/Show/LupeRobot1080p.sh &
      - /home/hochob/CodeLabs/Hochob/LupeRobot/Show/LupeRobotKill.sh
    - script.luperobot
      - hass
    - script.audiosectionthree
      - Sound, Mpg123
  - Photography
    - script.photography
      - python /home/hochob/CodeLabs/Hochob/Photography/selfie.py &
    - switch.imagescorporate
      - eog -sf /home/hochob/Images/Corporate/* &"
      - pkill -9 eog
    - switch.imagesvisitorscenter
      - eog -sf /home/hochob/Images/VisitorsCenter/* &
      - pkill -9 eog


- Peek' Perro
- Keeh Venado
- __Chakmool__ Jaguar
  - Home
- Chuwen Chango
- Ch'o' Raton
- Sootz' Murcielago
- Kaab Abeja
- Am Arana
- Ch'iich' Pajaro
- T'uut' Guacamaya
- Tunkuruchu Lechuza
- Tz'unu'un Colibri
- Kay Pescado
- Kan Culebra
- Aak Tortuga
- Aayin Cocodrilo

- Lupe Robot Memories
- Audio
- Camera
- Photography
- USB
- VLC Media Player

