# Edison Bluetooth 
This repository contains base code for creating IoT projects using an Intel Edison board + Arduino Expansion board and a Grove Starter Kit. You will find all what is needed for connecting Edison to a device via Bluetooth and sample projects that use the Grove Kit sensors and actuators.

Before starting, you should consider having:

* Intel Edison board running the [Latest Yocto-Poky image] (https://software.intel.com/edison-image/latest)
* Android or Windows device with [SPP] (https://learn.sparkfun.com/tutorials/bluetooth-basics/bluetooth-profiles) capabilities
* [BlueSPP](https://play.google.com/store/apps/details?id=com.shenyaocn.android.BlueSPP&hl=en) (Android) or [Bluetooth Serial Terminal](https://www.microsoft.com/en-us/store/p/bluetooth-serial-terminal/9wzdncrdfst8) (Windows) already installed in your device
* [Grove Starter Kit] (https://www.seeedstudio.com/Grove-starter-kit-plus---Intel-IoT-Edition-for-Intel-Galileo-Gen-2-and-Edison-p-1978.html#)

## Quickstart
NOTE: Your board should be connected to a Wi-fi network, if you haven't set this up, please refer to the [Getting started guide] (https://software.intel.com/en-us/get-started-edison-windows)

1.Clone Edison_Bluetooth
```c
root@edison # git clone https://github.com/DnPlas/Edison_Bluetooth.git
```

2.Select the project you'll be working with and edit the BT setup script

Open ```bluscript.sh``` with your preferred text editor and edit line 24 so that it points to the project you'll be working with (default is set as "gardening-system").

That is:

```c
root@edison # cd Edison_Bluetooth
root@edison # nano bluscript.sh
...
python /home/root/Edison_Bluetooth/projects/your-project/spp.py &
...
# Once the file is opened, replace 'your-project' with one of the options listed below.
````
Options are:
* temperature-monitor
* gardening-system
* hospital-assistant

Save all changes and exit.

3.Run the BT setup script.

```c
root@edison # ./bluscript.sh
Wait for the Bluetooth setup to finish
...
Now can now pair your device with Edison
```

4.Pair your device with Edison. Generally, all you have to do is enter your device's Bluetooth settings and select 'edison' or 'Pair to edison'. Note that this step will change depending on your device.

5.You can see the code in action by going  into your project's directory and run the correspondant script. Using BluSPP (Android) or Bluetooth Sertial Terminal (Windows), connect your device to Edison and start communicating.

NOTE: You should run ```your-project.py``` first and then connect your devices using either BlueSPP or Bluetooth Serial Terminal, otherwise, you will get errors from the apps.
```c
root@edison # cd
root@edison # cd Edison_Bluetooth/projects/your-project/
root@edison # python your_project.py
...
```

## Projects
### Temperature monitor
This system lets the user monitor the temperature of the room and get alerts when a threshold is reached.
###### System characteristics

* Temperature state
  * Is shown in a gauge
  * The user is able to know it via BT
* If the threshold is reached/exceeded, an alarm goes on
  * The alarm is a blinking LED
  * The user is notified via BT
* The system has a reset button

### Gardening system
This is a remote controlled system that lets the user track and take actions over a mini-garden.
###### System characteristics

* Watering the plant
  * The user is able to water it via BT
  * The plant will be watered onve a day at night
* Notifications and data requests
  * The user is notified of system events such as watering and amount of light received if it is below a threshold
  * System events are also displayed on a local LCD and will change backlight colors depending on the amount of light received (green: good, yellow: medium, red:bad)

### Hospital asssitant
This assistant tracks a patient's daily doses and alerts the nurse of emergency events.

* Controlling daily doses
  * If patient takes X pills, display the ones already administered (+1 pill when a button is pressed either BT or Grove push button)
  * The nurse receives reminders when a pill has to be administered
* Emergency button
  * An emergency event will be triggered when a button is pressed by the patient
  * A notification will be sent to the nurse via BT in case of emergency events
