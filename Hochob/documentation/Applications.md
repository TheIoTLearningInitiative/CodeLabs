# Hochob Server Applications

> Set of software functionalities.

Areas

- Home
- Beginning
- Experience
- Virtual

# Hochob Server Applications Home

> The states of Mexico are first-level administrative territorial entities of the country of Mexico, which officially is named United Mexican States. There are 31 states in Mexico.[1] Mexico City is a federal entity with a level of autonomy comparable to that of a state, but is not a state itself. [Wikipedia](https://en.wikipedia.org/wiki/States_of_Mexico)

# Home

- Name: Aguascalientes
  - Alias: Home Welcome Guadalajara Design Center
  - HomeAssistant: Introduccion Bienvenida y Protocolo de Seguridad
  - Station: Chakmool
  - Hochob Media:
    - Corporate Image
    - VisitorsCenter Sound Station
  - Services Image, Eog
  - Services Sound, Mpg123
- Name: Baja California Norte
  - Alias: Home Before Video
  - HomeAssistant: Video Antes del Video
  - Station: Chakmool
  - Hochob Media:
    - VisitorsCenter Image Place
    - VisitorsCenter Sound Station
  - Services Image, Eog
  - Services Sound, Mpg123
- Name: Baja California Sur
  - Alias: Home Lupe Robot Show
  - HomeAssistant: Video Video
  - Station: Chakmool
  - Hochob Media:
    - VisitorsCenter Video LupeRobot
  - Services Video, VlcMediaPlayer
  - Services Comms, Mqtt
- Name: Campeche
  - Alias: Home Welcome Visitors Center
  - HomeAssistant: Video Despues del Video
  - Station: Chakmool
  - Hochob Media:
    - VisitorsCenter Image Visitors
      - ??? Assuming the record of images is performed but what if not?
    - VisitorsCenter Sound Station
  - Services Image, Eog
  - Services Sound, Mpg123
- Name: Chiapas
  - Alias: Home Visitors Welcome Memories
  - HomeAssistant:
  - Station: Chakmool
  - Hochob Media: Source
    - Camera Fswebcam
  - Hochob Media:
    - VisitorsCenter Image Visitors
  - Services Camera, Fswebcam
- Name: Chihuahua
  - Alias: Home Corporate Image Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media:
    - Corporate Image
  - Services Image, Eog
- Name: Coahuila
  - Alias: Home Corporate Video Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media:
    - Corporate Video
  - Services Video, VlcMediaPlayer
- Name: Colima
  - Alias: Home Visitors Center Image Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media:
    - VisitorsCenter Image Visitors
  - Services Image, Eog
- Name: Durango
  - Alias: Home Visitors Center Video Showcase
  - HomeAssistant: 
  - Station: Chakmool
  - Hochob Media:
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




- Lupe Robot Memories
- Audio
- Camera
- Photography
- USB
- VLC Media Player

