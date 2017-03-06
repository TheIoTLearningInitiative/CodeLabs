# Getting Started

# Home Clean Up

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Scripts/clean.sh -o - | sh
```

```sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   239  100   239    0     0    195      0  0:00:01  0:00:01 --:--:--   217

Welcome to The IoT Learning Initiative Code Labs Playground

Removing all files under Home directory...
rm: cannot remove '/lib/modules/3.10.98-poky-edison+/build': No such file or directory

Happy Hacking'ing!

root@edison:~# 
```

# CodeLabs Not Available, Setup Up

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Scripts/setup.sh -o - | sh
```

```sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   469  100   469    0     0    437      0  0:00:01  0:00:01 --:--:--   489

Welcome to The IoT Learning Initiative Code Labs Playground

Cloning into 'CodeLabs'...
remote: Counting objects: 2114, done.
remote: Compressing objects: 100% (13/13), done.
remote: Total 2114 (delta 4), reused 0 (delta 0), pack-reused 2101
Receiving objects: 100% (2114/2114), 325.17 KiB | 212.00 KiB/s, done.
Resolving deltas: 100% (1111/1111), done.
Checking connectivity... done.
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//Packages.
Updated list of available packages in /var/lib/opkg/iotkit.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/all/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-all.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/Packages.
...
...
...
Successfully installed dweepy-0.2.0

Now go to CodeLabs/Xpuhil directory to get started!

Happy Xpuhil'ing!


Happy Hacking'ing!
```

# CodeLabs Not Available, Clone

```sh
root@edison:~# git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 323, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 323 (delta 0), reused 0 (delta 0), pack-reused 320
Receiving objects: 100% (323/323), 142.55 KiB | 0 bytes/s, done.
Resolving deltas: 100% (136/136), done.
Checking connectivity... done.
root@edison:~# cd CodeLabs/
root@edison:~/CodeLabs# 
```

# CodeLabs Available, Update

```sh
root@edison:~/CodeLabs# git reset --hard
HEAD is now at 2fe8288 Merge branch 'master' of https://github.com/TheIoTLearningInitiative/CodeLabs
root@edison:~/CodeLabs# git clean -xf
```
