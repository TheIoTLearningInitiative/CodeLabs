# Plex

> Plex allows you to aggregate all your personal media and access it anywhere you go. Enjoy your own media on all your devices with the Plex Media Server. [Homepage](https://www.plex.tv/)

# Download

Download Plex Media Server

```sh
hochob@server:~/Downloads$ sudo dpkg -i plexmediaserver_1.4.4.3495-edef59192_amd64.deb 
Selecting previously unselected package plexmediaserver.
(Reading database ... 113142 files and directories currently installed.)
Preparing to unpack plexmediaserver_1.4.4.3495-edef59192_amd64.deb ...
Unpacking plexmediaserver (1.4.4.3495-edef59192) ...
Setting up plexmediaserver (1.4.4.3495-edef59192) ...
Warning: The postinst maintainerscript of the package plexmediaserver
Warning: seems to use apt-key (provided by apt) without depending on gnupg or gnupg2.
Warning: This will BREAK in the future and should be fixed by the package maintainer(s).
Note: Check first if apt-key functionality is needed at all - it probably isn't!
Warning: apt-key should not be used in scripts (called from postinst maintainerscript of the package plexmediaserver)
OK
Created symlink /etc/systemd/system/multi-user.target.wants/plexmediaserver.service → /lib/systemd/system/plexmediaserver.service.
Processing triggers for ureadahead (0.100.0-19) ...
ureadahead will be reprofiled on next reboot
Processing triggers for systemd (231-9git1) ...
Processing triggers for desktop-file-utils (0.23-1ubuntu1) ...
Processing triggers for mime-support (3.60ubuntu1) ...
hochob@server:~/Downloads$ 
```

## Identification

Give it a friendly name to help identify it in Plex apps and on your network: Hochob Server

# Add your media

- Add Library
  - Name: Videos
  - Path: /home/hochob/Videos
  - Name: Pictures
  - Path: /home/hochob/Pictures
- Settings
  - Library
    - Update my library automatically 
    - Update my library periodically
    
## Tablet

- Install Android Application