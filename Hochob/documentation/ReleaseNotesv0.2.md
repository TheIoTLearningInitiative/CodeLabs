# Visitors Center Release Notes v0.1

> This release notes address requirements, additions, removals and fixes about Hochob Project, the codename for our Intel Guadalajara Visitors Center. For more in depth or other information please contact current maintainers.

## Summary

Welcome to our Visitors Center, an awesome space built by an awesome team of volunteers thought to inspire young people to discover what Engineers, Scientists and Researchers do and to motivate them to explore the Science, Technology, Engineering and Mathematics fields for their future Education through the use of hardware and software technologies.

## Hocho Project

Hochob Project is an open source storytelling type of automated system for museums, based on the Linux operating system, created by taking a wide array of ideas from a wide array of Volunteers to orchestrate a wide range of commercial and non commercial devices managed by a wide range of software technologies and programming languages, all packed into one single user interface to help volunteers tell our visitors a compelling visual and spoken story of our history, our technology and different topics related to Science, Technology, Engineering and Mathematics. [Presentation](https://goo.gl/KuMWxD)

## Roles

The following Volunteer roles are the most important piece for Hochob Project:

- __Captain__: Leads our future engineers around the museum and our labs to fully experience the past, present and future of our technology.
- __Techie__: Expert on integrating our technology, third party resources and feedback from the rest of the crew to enable out of the world experiences.

Both the Captains and Techies need to ramp up in a 1 hour technical introduction training. 

## Requirements

This release is based on the Architecture version 2.0, which includes the following components:

- Accounts
- Areas
- Digital Media Players
- Keypads
- Mobile Device
- Amikoo
- Server
- Stations

## Additions


# Visitors Center Release Notes v0.1

```sh
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SEASON=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/Season/
export SEASON=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SEASON
```

```sh
root@workstation:~/CodeLabs# git pull
Updating 9a9d1de..a84461c
Fast-forward
 Hochob/Applications/CentralMayaLowlands/Ixtapa.sh               |   2 +-
 Hochob/Applications/RobotMayaLands/Makeblock.sh                 |  95 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Hochob/Applications/RobotMayaLands/Meccanoid.sh                 |  47 +++++++++++++++++++++++++++++++
 Hochob/Applications/RobotMayaLands/Sphero.sh                    |   6 ++--
 Hochob/Applications/SouthernMayaHighlands/Yucatan.sh            |   8 ++++++
 Hochob/Applications/SouthernMayaHighlands/Zacatecas.sh          |   2 +-
 Hochob/Applications/TechieMayaLands/Google.sh                   |  54 +++++++++++++++++++++++++++++++++++
 Hochob/Applications/TechieMayaLands/WindRiver.sh                |   4 +--
 Hochob/Main.sh                                                  |   5 ++++
 Hochob/Services/Automation/HomeAssistant/configuration.yaml.2.0 |  62 ++++++++++++++++++++++++++++++++--------
 Hochob/Services/Events/HostExternal.sh                          | 118 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Hochob/Services/Events/{Host.sh => HostInternal.sh}             |   0
 Hochob/Services/Stream/StreamAudio.sh                           |  28 ++++++++++++-------
 13 files changed, 403 insertions(+), 28 deletions(-)
 create mode 100644 Hochob/Applications/RobotMayaLands/Makeblock.sh
 create mode 100644 Hochob/Applications/RobotMayaLands/Meccanoid.sh
 create mode 100644 Hochob/Applications/SouthernMayaHighlands/Yucatan.sh
 create mode 100644 Hochob/Applications/TechieMayaLands/Google.sh
 create mode 100644 Hochob/Services/Events/HostExternal.sh
 rename Hochob/Services/Events/{Host.sh => HostInternal.sh} (100%)
```

From Southern Maya Lowlands to Media Maya Lands

# Name: Aak Guanajuato
# Name: Aayin Guerrero
# Name: Am Hidalgo
# Name: Chakmool Jalisco
# Name: Ch'iich' Puebla
# Name: Ch'o' Queretaro
# Name: Chuwen Quintana Roo
# Name: Kaab Yucatan

renamed:    ../TechieMayaLands/Google.sh -> TraditionMayaLands/Imix.sh

[Hochob b612f71] Update
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename Hochob/Applications/{RobotMayaLands/Sphero.sh => CalendarMayaLands/Pop.sh} (100%)
 rename Hochob/Applications/{RobotMayaLands/Meccanoid.sh => CalendarMayaLands/Wo.sh} (100%)

[Hochob 34d32c8] Update
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Hochob/Applications/{TechieMayaLands/WindRiver.sh => CalendarMayaLands/Sip.sh} (100%)

rename Hochob/Services/Stream/{StreamAudio.sh => StreamText.sh} (100%)

# Amikoo

AMIKOO="lupe/"
AMIKOO_SAY=$AMIKOO/say
AMIKOO_DECIR=$AMIKOO/decir
AMIKOO_GCVISIONAPI=$AMIKOO/vision
AMIKOO_GCTRANSLATIONAPI=$AMIKOO/translate


MQTT Server

```sh
 Hochob/Applications/CalendarMayaLands/Sip.sh    | 2 +-
 Hochob/Services/Keypad/HandlerMultipleChoice.py | 4 +++-
 Hochob/Services/Keypad/HandlerMultipleChoice.sh | 2 +-
 Hochob/Services/Keypad/HandlerYesNo.py          | 3 ++-
 Hochob/Services/Keypad/HandlerYesNo.sh          | 2 +-
```

# Media

```sh
mkdir ~/HochobServerMedia/Tradition
Change from AREA_SOUTERN_MAYA_HIGHLANDS to SOUTERN_MAYA_HIGHLANDS
```

Tradition Feature
- Server
- Amikoo

- Game
  - Loteria