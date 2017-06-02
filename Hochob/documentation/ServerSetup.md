# Server Setup

# Issues

* Make server not ask for password with sudo

```sh
hochob@server:~$ /sbin/ifconfig
enp0s25: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether f4:4d:30:61:f4:2a  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 20  memory 0xaa100000-aa120000  

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1  (Local Loopback)
        RX packets 6178  bytes 3092794 (3.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6178  bytes 3092794 (3.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.138  netmask 255.255.255.0  broadcast 192.168.10.255
        inet6 fe80::a2a0:f0e3:8daf:9684  prefixlen 64  scopeid 0x20<link>
        ether 94:65:9c:a1:2c:6e  txqueuelen 1000  (Ethernet)
        RX packets 275175  bytes 364234831 (364.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 52986  bytes 7347203 (7.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

hochob@server:~$
```

# Operating System: Debian

```sh
hochob@server:~$ /sbin/ifconfig
eth0      Link encap:Ethernet  HWaddr f4:4d:30:67:a3:bf  
          inet addr:192.168.1.147  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::f64d:30ff:fe67:a3bf/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:7159 errors:0 dropped:0 overruns:0 frame:0
          TX packets:3372 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:7209784 (6.8 MiB)  TX bytes:416585 (406.8 KiB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:8 errors:0 dropped:0 overruns:0 frame:0
          TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:480 (480.0 B)  TX bytes:480 (480.0 B)

hochob@server:~$ 
```

# Add User to Sudo

```sh
root@server:~# adduser hochob sudo
Adding user `hochob' to group `sudo' ...
Adding user hochob to group sudo
Done.
root@server:~# 
```

```sh
hochob@server:~# usermod -a -G sudo hochob
````

```sh
hochob@server:~# nano /etc/sudoers
````

# Debian Backports

```sh
hochob@server:~$ sudo nano /etc/apt/sources.list
deb http://ftp.us.debian.org/debian/ jessie main
deb-src http://ftp.us.debian.org/debian/ jessie main

deb http://security.debian.org/ jessie/updates main
deb-src http://security.debian.org/ jessie/updates main

# jessie-updates, previously known as 'volatile'
deb http://ftp.us.debian.org/debian/ jessie-updates main
deb-src http://ftp.us.debian.org/debian/ jessie-updates main

deb http://ftp.debian.org/debian jessie-backports main
```

```sh
hochob@server:~$ apt-cache search linux-image
linux-headers-3.16.0-4-amd64 - Header files for Linux 3.16.0-4-amd64
linux-image-3.16.0-4-amd64 - Linux 3.16 for 64-bit PCs
linux-image-3.16.0-4-amd64-dbg - Debugging symbols for Linux 3.16.0-4-amd64
linux-image-amd64 - Linux for 64-bit PCs (meta-package)
linux-image-amd64-dbg - Debugging symbols for Linux amd64 configuration (meta-package)
linux-headers-4.9.0-0.bpo.2-amd64 - Header files for Linux 4.9.0-0.bpo.2-amd64
linux-headers-4.9.0-0.bpo.2-rt-amd64 - Header files for Linux 4.9.0-0.bpo.2-rt-amd64
linux-image-4.9.0-0.bpo.2-amd64-dbg - Debugging symbols for Linux 4.9.0-0.bpo.2-amd64
linux-image-4.9.0-0.bpo.2-amd64-unsigned - Linux 4.9 for 64-bit PCs
linux-image-4.9.0-0.bpo.2-rt-amd64-dbg - Debugging symbols for Linux 4.9.0-0.bpo.2-rt-amd64
linux-image-4.9.0-0.bpo.2-rt-amd64-unsigned - Linux 4.9 for 64-bit PCs, PREEMPT_RT
linux-headers-4.9.0-2-grsec-amd64 - Header files for Linux 4.9.0-2-grsec-amd64
linux-image-4.9.0-2-grsec-amd64 - Linux 4.9 for 64-bit PCs, Grsecurity protection
linux-image-grsec-amd64 - Linux image meta-package, grsec featureset
linux-image-rt-amd64 - Linux for 64-bit PCs (meta-package), PREEMPT_RT
linux-image-rt-amd64-dbg - Debugging symbols for Linux rt-amd64 configuration (meta-package)
linux-image-4.9.0-0.bpo.2-amd64 - Linux 4.9 for 64-bit PCs (signed)
linux-image-4.9.0-0.bpo.2-rt-amd64 - Linux 4.9 for 64-bit PCs, PREEMPT_RT (signed)
hochob@server:~$ 
```

```sh
hochob@server:~$ sudo apt-get install -t jessie-backports linux-image-4.9.0-0.bpo.2-amd64
```

# Power Management

* Preferences
  * Power Manager
    * Display
      * Handle Display Power Management
    * Security
      * Automatically Lock The Session Never

# Git

```sh
hochob@server:~$ sudo apt-get install git
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  git-man liberror-perl rsync
Suggested packages:
  git-daemon-run git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-arch git-cvs git-mediawiki git-svn
The following NEW packages will be installed:
  git git-man liberror-perl rsync
0 upgraded, 4 newly installed, 0 to remove and 0 not upgraded.
Need to get 4,942 kB of archives.
After this operation, 24.3 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://ftp.us.debian.org/debian/ jessie/main liberror-perl all 0.17-1.1 [22.4 kB]
Get:2 http://ftp.us.debian.org/debian/ jessie/main git-man all 1:2.1.4-2.1+deb8u2 [1,267 kB]
Get:3 http://ftp.us.debian.org/debian/ jessie/main git amd64 1:2.1.4-2.1+deb8u2 [3,262 kB]
Get:4 http://ftp.us.debian.org/debian/ jessie/main rsync amd64 3.1.1-3 [390 kB]
Fetched 4,942 kB in 2s (2,204 kB/s)
Selecting previously unselected package liberror-perl.
(Reading database ... 96565 files and directories currently installed.)
Preparing to unpack .../liberror-perl_0.17-1.1_all.deb ...
Unpacking liberror-perl (0.17-1.1) ...
Selecting previously unselected package git-man.
Preparing to unpack .../git-man_1%3a2.1.4-2.1+deb8u2_all.deb ...
Unpacking git-man (1:2.1.4-2.1+deb8u2) ...
Selecting previously unselected package git.
Preparing to unpack .../git_1%3a2.1.4-2.1+deb8u2_amd64.deb ...
Unpacking git (1:2.1.4-2.1+deb8u2) ...
Selecting previously unselected package rsync.
Preparing to unpack .../rsync_3.1.1-3_amd64.deb ...
Unpacking rsync (3.1.1-3) ...
Processing triggers for man-db (2.7.0.2-5) ...
Processing triggers for systemd (215-17+deb8u6) ...
Setting up liberror-perl (0.17-1.1) ...
Setting up git-man (1:2.1.4-2.1+deb8u2) ...
Setting up git (1:2.1.4-2.1+deb8u2) ...
Setting up rsync (3.1.1-3) ...
Processing triggers for systemd (215-17+deb8u6) ...
hochob@server:~$ 
```

# CodeLabs Git Repository

```sh
hochob@server:~$ git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 14999, done.
remote: Compressing objects: 100% (306/306), done.
remote: Total 14999 (delta 193), reused 0 (delta 0), pack-reused 14682
Receiving objects: 100% (14999/14999), 10.20 MiB | 5.15 MiB/s, done.
Resolving deltas: 100% (8618/8618), done.
Checking connectivity... done.
hochob@server:~$ 
```

# Sandbox

# Sudo Privileges

Not Working!

```sh
# User alias specification
hochob ALL=(ALL) NOPASSWD:ALL
```

# Extras

* Cheese, not able to interact through command line

# PATH

* Export directories into path to allow killing processes easily

```sh
hochob@server:~$ nano ~/.profile
export PATH=$PATH:/home/hochob/CodeLabs/Hochob/LupeRobot
```

