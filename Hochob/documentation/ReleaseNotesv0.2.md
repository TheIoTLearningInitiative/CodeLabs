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