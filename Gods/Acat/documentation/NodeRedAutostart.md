# Autostart

## pm2 :)

```sh
root@edison:~# npm install -g --unsafe-perm pm2
```

## node-red Start


```sh
root@edison:~# pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256"
```

```sh
��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��─��─��┬��─��─��─��┬��─��─��─��─��─��┬��─��─��─��─��─��─��─��─��┐
��│ Name     ��│ mode ��│ status ��│ ��↺ ��│ cpu ��│ memory    ��│
��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��─��─��┼��─��─��─��┼��─��─��─��─��─��┼��─��─��─��─��─��─��─��─��┤
��│ node-red ��│ fork ��│ online ��│ 1 ��│ 0%  ��│ 34.3 MB   ��│
��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��─��─��┴��─��─��─��┴��─��─��─��─��─��┴��─��─��─��─��─��─��─��─��┘
 Use `pm2 show <id|name>` to get more details about an app
```

### node-red Restart

```sh
root@edison:~# pm2 restart node-red
```

```sh
Use --update-env to update environment variables
[PM2] Applying action restartProcessId on app [node-red](ids: 0)
[PM2] [node-red](0) ��✓
��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��─��─��┬��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��─��┐
��│ Name     ��│ mode ��│ status ��│ ��↺ ��│ cpu  ��│ memory   ��│
��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��─��─��┼��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��─��┤
��│ node-red ��│ fork ��│ online ��│ 2 ��│ 100% ��│ 3.1 MB   ��│
��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��─��─��┴��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��─��┘
 Use `pm2 show <id|name>` to get more details about an app
```

### node-red Autostart, Working


http://askubuntu.com/questions/676007/how-do-i-make-my-systemd-service-run-via-specific-user-and-start-on-boot

```sh

```

```sh
root@edison:/etc/init.d# ls
fuse  node-red.sh
```

```sh
root@edison:/etc/init.d# update-rc.d node-red.sh defaults                                                                                                      
 Adding system startup for /etc/init.d/node-red.sh.
root@edison:/etc/init.d# 
```

### node-red Autostart, Not Working

```sh
root@edison:~# nano node-red.sh
pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256"
```

```sh
root@edison:~# chmod +x node-red.sh 
root@edison:~# cd /lib/systemd/system
```

```sh
root@edison:/lib/systemd/system# nano node-red.service
```

```sh
[Unit]
Description=Node-RED   
After=sys-subsystem-net-devices-%i.device

[Service]
ExecStart=/bin/sh /home/root/node-red.sh
Restart=always
RestartSec=10

[Install]
Alias=NodeRed   
WantedBy=multi-user.target
```

```sh
root@edison:/lib/systemd/system# systemctl daemon-reload
```

```sh
root@edison:/lib/systemd/system# systemctl --system enable node-red
ln -s '/lib/systemd/system/node-red.service' '/etc/systemd/system/NodeRed'
ln -s '/lib/systemd/system/node-red.service' '/etc/systemd/system/multi-user.target.wants/node-red.service'
```

```sh
root@edison:/lib/systemd/system# systemctl start node-red
```

```sh
root@edison:/lib/systemd/system# systemctl status node-red.service -l
��● node-red.service - Node-RED
   Loaded: loaded (/lib/systemd/system/node-red.service; enabled)
   Active: active (running) since Sun 2017-03-12 22:59:54 UTC; 1s ago
 Main PID: 479 (bash)
   CGroup: /system.slice/node-red.service
           ��├��─479 /bin/bash /home/root/node-red.sh
           ��└��─480 node /usr/bin/node-red

Mar 12 22:59:54 edison systemd[1]: Started Node-RED.
```

```sh

```

### node-red Autostart, Not Working

```sh
root@edison:~# cd /etc/init.d/
```

```sh
root@edison:/etc/init.d# pm2 save
```

```sh
[PM2] Saving current process list...
[PM2] Successfully saved in /home/root/.pm2/dump.pm2
root@edison:/etc/init.d# pm2 startup
[PM2] Init System found: systemd
Platform systemd
Template
[Unit]
Description=PM2 process manager
Documentation=https://pm2.keymetrics.io/
After=network.target

[Service]
Type=forking
User=root
LimitNOFILE=infinity
LimitNPROC=infinity
LimitCORE=infinity
TimeoutStartSec=8
Environment=PATH=/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
Environment=PM2_HOME=/home/root/.pm2
PIDFile=/home/root/.pm2/pm2.pid

ExecStart=/usr/lib/node_modules/pm2/bin/pm2 resurrect
ExecReload=/usr/lib/node_modules/pm2/bin/pm2 reload all
ExecStop=/usr/lib/node_modules/pm2/bin/pm2 kill

[Install]
WantedBy=multi-user.target

Target path
/etc/systemd/system/pm2-root.service
Command list
[ 'chmod +x /etc/systemd/system/pm2-root.service',
  'systemctl enable pm2-root',
  'systemctl start pm2-root',
  'systemctl daemon-reload',
  'systemctl status pm2-root' ]
[PM2] Writing init configuration in /etc/systemd/system/pm2-root.service
[PM2] Making script booting at startup...
>>> Executing chmod +x /etc/systemd/system/pm2-root.service
[DONE] 
>>> Executing systemctl enable pm2-root
ln -s '/etc/systemd/system/pm2-root.service' '/etc/systemd/system/multi-user.target.wants/pm2-root.service'
[DONE] 
>>> Executing systemctl start pm2-root
[DONE] 
>>> Executing systemctl daemon-reload
[DONE] 
>>> Executing systemctl status pm2-root
��● pm2-root.service - PM2 process manager
   Loaded: loaded (/etc/systemd/system/pm2-root.service; enabled)
   Active: active (running) since Sun 2017-03-12 18:55:52 UTC; 660ms ago
     Docs: https://pm2.keymetrics.io/
 Main PID: 2612 (PM2 v2.4.2: God)
   CGroup: /system.slice/pm2-root.service
           ��‣ 2612 PM2 v2.4.2: God Daemon (/home/root/.pm2)             

Mar 12 18:55:51 edison pm2[2701]: [PM2] Resurrecting
Mar 12 18:55:51 edison pm2[2701]: [PM2] Restoring processes located in /home/root/.pm2/dump.pm2
Mar 12 18:55:52 edison pm2[2701]: ��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─�┐
Mar 12 18:55:52 edison pm2[2701]: ��│ App name ��│ id ��│ mode ��│ pid  ��│ status ��│ restart ��│ uptime ��│ cpu ��│ mem       ��│ watching│
Mar 12 18:55:52 edison pm2[2701]: ��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─�┤
Mar 12 18:55:52 edison pm2[2701]: ��│ node-red ��│ 0  ��│ fork ��│ 2656 ��│ online ��│ 1       ��│ 5m     ��│ 0%  ��│ 34.0 MB   ��│ disabled│
Mar 12 18:55:52 edison pm2[2701]: ��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─�┘
Mar 12 18:55:52 edison pm2[2701]: Use `pm2 show <id|name>` to get more details about an app
Mar 12 18:55:52 edison systemd[1]: Started PM2 process manager.
[DONE] 
+---------------------------------------+
[PM2] Freeze a process list on reboot via:
$ pm2 save

[PM2] Remove init script via:
$ pm2 unstartup systemd
root@edison:/etc/init.d# 
```

```sh
root@edison:/etc/init.d# pm2 startup systemd
```

```sh
[PM2] Init System found: systemd
Platform systemd
Template
[Unit]
Description=PM2 process manager
Documentation=https://pm2.keymetrics.io/
After=network.target

[Service]
Type=forking
User=root
LimitNOFILE=infinity
LimitNPROC=infinity
LimitCORE=infinity
TimeoutStartSec=8
Environment=PATH=/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
Environment=PM2_HOME=/home/root/.pm2
PIDFile=/home/root/.pm2/pm2.pid

ExecStart=/usr/lib/node_modules/pm2/bin/pm2 resurrect
ExecReload=/usr/lib/node_modules/pm2/bin/pm2 reload all
ExecStop=/usr/lib/node_modules/pm2/bin/pm2 kill

[Install]
WantedBy=multi-user.target

Target path
/etc/systemd/system/pm2-root.service
Command list
[ 'chmod +x /etc/systemd/system/pm2-root.service',
  'systemctl enable pm2-root',
  'systemctl start pm2-root',
  'systemctl daemon-reload',
  'systemctl status pm2-root' ]
[PM2] Writing init configuration in /etc/systemd/system/pm2-root.service
[PM2] Making script booting at startup...
>>> Executing chmod +x /etc/systemd/system/pm2-root.service
[DONE] 
>>> Executing systemctl enable pm2-root
[DONE] 
>>> Executing systemctl start pm2-root
[DONE] 
>>> Executing systemctl daemon-reload
[DONE] 
>>> Executing systemctl status pm2-root
��● pm2-root.service - PM2 process manager
   Loaded: loaded (/etc/systemd/system/pm2-root.service; enabled)
   Active: active (running) since Sun 2017-03-12 21:44:32 UTC; 949ms ago
     Docs: https://pm2.keymetrics.io/
 Main PID: 421 (PM2 v2.4.2: God)
   CGroup: /system.slice/pm2-root.service
           ��‣ 421 PM2 v2.4.2: God Daemon (/home/root/.pm2)             

Mar 12 21:44:32 edison pm2[598]: [PM2] Resurrecting
Mar 12 21:44:32 edison pm2[598]: [PM2] Restoring processes located in /home/root/.pm2/dump.pm2
Mar 12 21:44:32 edison pm2[598]: ��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��┬��─��─��─��─��─��┐
Mar 12 21:44:32 edison pm2[598]: ��│ App name ��│ id ��│ mode ��│ pid ��│ status ��│ restart ��│ uptime ��│ cpu ��│ mem       ��│ watching �│
Mar 12 21:44:32 edison pm2[598]: ��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��┼��─��─��─��─��─��┤
Mar 12 21:44:32 edison pm2[598]: ��│ node-red ��│ 0  ��│ fork ��│ 573 ��│ online ��│ 7       ��│ 11s    ��│ 79% ��│ 34.9 MB   ��│ disabled �│
Mar 12 21:44:32 edison pm2[598]: ��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��┴��─��─��─��─��─��┘
Mar 12 21:44:32 edison pm2[598]: Use `pm2 show <id|name>` to get more details about an app
Mar 12 21:44:32 edison systemd[1]: Started PM2 process manager.
[DONE] 
+---------------------------------------+
[PM2] Freeze a process list on reboot via:
$ pm2 save

[PM2] Remove init script via:
$ pm2 unstartup systemd
root@edison:/etc/init.d# 
```

```sh
root@edison:/etc/init.d# cd
root@edison:~# 
```

# Crontab

```sh
root@edison:~# opkg install cronie
Installing cronie (1.4.11-r0) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/cronie_1.4.11-r0_core2-32.ipk.
Installing pam-plugin-access (1.1.6-r5) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/pam-plugin-access_1.1.6-r5_core2-32.ipk.
Running groupadd commands...
NOTE: Performing groupadd with [ --system crontab] and 10 times of retry
Configuring pam-plugin-access.
Configuring cronie.
ln -s '/lib/systemd/system/crond.service' '/etc/systemd/system/multi-user.target.wants/crond.service'
root@edison:~# 
```

```sh
systemctl status pm2-root.service
echo $?
pm2 restart node-red
```
