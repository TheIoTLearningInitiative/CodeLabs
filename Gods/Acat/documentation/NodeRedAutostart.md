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

