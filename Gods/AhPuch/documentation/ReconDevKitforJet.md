# Recon Dev Kit for Jet™

> ReconOS combined with Recon Jet provides a powerful Operating
System for Consumers.

Setting Up Your Environment

1. Install Android Studio
2. Open the Android SDK Manager
3. Install updates and API
4. Install the correct ADB

## Samples

1. __My First Recon App__
   > This is a brief overview of the resources you'll need to develop apps for ReconOS, an Operating System that provides a powerful platform compatible with Android API level 16. Once you've familiarized yourself with our reference app and with the Recon SDK UI components, you should be comfortable enough to create your own Jet Pro app
2. __Web Connectivity__
  >  This guide offers a quick insight into the using the Web Connectivity API. Recon devices can get Internet access by connecting (via Bluetooth) to an iPhone or Android smartphone running the Engage app (iOS, Android). The web connectivity service allows your app to use this functionality easily, without knowing the type of smartphone connected to the Recon device. In this sample, we’ll show you how to use the Web Connectivity API to download and upload files. We’ll cover two types of file downloads, including one involving an image. For our upload example, we’ll use the HTTP request and response service httpbin.org to test the upload process.
3. __Heading__
   > This guide offers a quick insight into the using the Heading API. This sample will show how to use the heading service to determine the orientation of the user’s head. Our sample compass app contains a single activity, CompassActivity, which shows the compass’ user interface and updates that interface with the correct heading. Note that, since pitch and roll values aren’t needed in a compass, our sample app retrieves only yaw values.
4. __Notifications__
   > This guide offers a quick insight into the using the Notifications API. A notification is a message you can show to the user outside of your application’s user interface (UI). Because of their unique design, Recon devices present notifications in a different way than other mobile devices.
   > Notifications on ReconOS come in two distinct flavors: passive and interactive. Both types of notification are displayed at the bottom of the screen.
   >> Passive notifications are used to show short, concise messages for a brief amount of time
   >> Interactive notifications can be acted upon by the user. These notifications are larger and remain visible for a longer period of time (10 seconds). They can also be dismissed manually.
5. __Metrics__
   > This guide offers a quick insight into the using the Metrics API. When this document refers to ‘metrics’, we are talking about fitness data. ReconOS generates metrics by processing, filtering, and sometimes combining raw readings from both built-in and third-party (i.e. BLE & ANT+) sensors. For example, raw readings from Jet’s GPS and barometer/altimeter are combined be combined to generate a 3D speed metric. The Metrics API gives developers full access to metrics like 3D speed, heart rate, distance, altitude, etc.
6. __External Sensor__
   > This guide offers a quick insight into the using the External Sensor API. 