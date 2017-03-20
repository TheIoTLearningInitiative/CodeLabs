# Home Assistant: Automatic Startup: systemd

## Links

- [ArchLinux SystemD](https://wiki.archlinux.org/index.php/Systemd#Service_types)

```sh
hochob@server:~$ ps -p 1 -o comm=
systemd
hochob@server:~$ 
```

```sh
hochob@server:~$ cd /lib/systemd/system/
hochob@server:/lib/systemd/system$ ls
accounts-daemon.service                 dbus.socket                        ModemManager.service                rc.service                   stop-bootlogd-single.service           systemd-resolved.service.d
acpid.path                              debug-shell.service                module-init-tools.service           rcS.service                  suspend.target                         systemd-rfkill.service
acpid.service                           default.target                     motd.service                        reboot.service               swap.target                            systemd-rfkill.socket
acpid.socket                            dev-hugepages.mount                mountall-bootclean.service          reboot.target                sys-fs-fuse-connections.mount          systemd-suspend.service
alsa-restore.service                    dev-mqueue.mount                   mountall.service                    reboot.target.wants          sysinit.target                         systemd-sysctl.service
alsa-state.service                      emergency.service                  mountdevsubfs.service               remote-fs-pre.target         sysinit.target.wants                   systemd-timedated.service
alsa-utils.service                      emergency.target                   mountkernfs.service                 remote-fs.target             sys-kernel-config.mount                systemd-timesyncd.service
anacron-resume.service                  exit.target                        mountnfs-bootclean.service          rescue.service               sys-kernel-debug.mount                 systemd-timesyncd.service.d
anacron.service                         final.target                       mountnfs.service                    rescue.target                syslog.socket                          systemd-tmpfiles-clean.service
apparmor.service                        friendly-recovery.service          multi-user.target                   rescue.target.wants          systemd-ask-password-console.path      systemd-tmpfiles-clean.timer
apport-forward@.service                 fuse.service                       multi-user.target.wants             resolvconf.service           systemd-ask-password-console.service   systemd-tmpfiles-setup-dev.service
apport-forward.socket                   fwupdate-cleanup.service           netplan-wpa@.service                rmnologin.service            systemd-ask-password-plymouth.path     systemd-tmpfiles-setup.service
apt-daily.service                       getty@.service                     networking.service                  rpcbind.target               systemd-ask-password-plymouth.service  systemd-udevd-control.socket
apt-daily.timer                         getty-static.service               NetworkManager-dispatcher.service   rsync.service                systemd-ask-password-wall.path         systemd-udevd-kernel.socket
autovt@.service                         getty.target                       network-manager.service             rsyslog.service              systemd-ask-password-wall.service      systemd-udevd.service
avahi-daemon.service                    getty.target.wants                 NetworkManager.service              runlevel0.target             systemd-backlight@.service             systemd-udev-settle.service
avahi-daemon.socket                     gpu-manager.service                NetworkManager-wait-online.service  runlevel1.target             systemd-binfmt.service                 systemd-udev-trigger.service
basic.target                            graphical.target                   network-online.target               runlevel1.target.wants       systemd-exit.service                   systemd-update-utmp-runlevel.service
basic.target.wants                      graphical.target.wants             network-pre.target                  runlevel2.target             systemd-fsckd.service                  systemd-update-utmp.service
bluetooth.service                       halt.service                       network.target                      runlevel2.target.wants       systemd-fsckd.socket                   systemd-user-sessions.service
bluetooth.target                        halt.target                        nss-lookup.target                   runlevel3.target             systemd-fsck-root.service              system.slice
bootlogd.service                        halt.target.wants                  nss-user-lookup.target              runlevel3.target.wants       systemd-fsck@.service                  system-update.target
bootlogs.service                        hibernate.target                   ondemand.service                    runlevel4.target             systemd-halt.service                   system-update.target.wants
bootmisc.service                        hostname.service                   packagekit-offline-update.service   runlevel4.target.wants       systemd-hibernate-resume@.service      timers.target
busnames.target                         hwclock.service                    packagekit.service                  runlevel5.target             systemd-hibernate.service              timers.target.wants
busnames.target.wants                   hybrid-sleep.target                paths.target                        runlevel5.target.wants       systemd-hostnamed.service              time-sync.target
checkfs.service                         ifup@.service                      plymouth-halt.service               runlevel6.target             systemd-hwdb-update.service            udev.service
checkroot-bootclean.service             initrd-cleanup.service             plymouth-kexec.service              sendsigs.service             systemd-hybrid-sleep.service           udisks2.service
checkroot.service                       initrd-fs.target                   plymouth-log.service                serial-getty@.service        systemd-initctl.service                ufw.service
console-getty.service                   initrd-parse-etc.service           plymouth-poweroff.service           setvtrgb.service             systemd-initctl.socket                 umountfs.service
console-setup.service                   initrd-root-device.target          plymouth-quit.service               shutdown.target              systemd-journald-audit.socket          umountnfs.service
console-shell.service                   initrd-root-fs.target              plymouth-quit-wait.service          sigpwr.target                systemd-journald-dev-log.socket        umountroot.service
container-getty@.service                initrd-switch-root.service         plymouth-read-write.service         single.service               systemd-journald.service               umount.target
cron.service                            initrd-switch-root.target          plymouth-reboot.service             sleep.target                 systemd-journald.socket                upower.service
cryptdisks-early.service                initrd-switch-root.target.wants    plymouth.service                    -.slice                      systemd-journal-flush.service          urandom.service
cryptdisks.service                      initrd.target                      plymouth-start.service              slices.target                systemd-kexec.service                  ureadahead.service
cryptsetup-pre.target                   initrd-udevadm-cleanup-db.service  plymouth-switch-root.service        smartcard.target             systemd-localed.service                ureadahead-stop.service
cryptsetup.target                       kerneloops.service                 polkitd.service                     snapd.boot-ok.service        systemd-logind.service                 ureadahead-stop.timer
ctrl-alt-del.target                     kexec.target                       poweroff.target                     snapd.firstboot.service      systemd-machine-id-commit.service      usb_modeswitch@.service
cups.path                               kexec.target.wants                 poweroff.target.wants               snapd.frameworks-pre.target  systemd-modules-load.service           user@.service
cups.service                            keyboard-setup.service             pppd-dns.service                    snapd.frameworks.target      systemd-networkd.service               user@.service.d
cups.socket                             killprocs.service                  printer.target                      snapd.refresh.service        systemd-networkd.socket                user.slice
dbus-org.freedesktop.hostname1.service  kmod.service                       procps.service                      snapd.refresh.timer          systemd-networkd-wait-online.service   uuidd.service
dbus-org.freedesktop.locale1.service    kmod-static-nodes.service          proc-sys-fs-binfmt_misc.automount   snapd.service                systemd-poweroff.service               uuidd.socket
dbus-org.freedesktop.login1.service     lightdm.service                    proc-sys-fs-binfmt_misc.mount       snapd.socket                 systemd-quotacheck.service             wacom-inputattach@.service
dbus-org.freedesktop.network1.service   local-fs-pre.target                quotaon.service                     sockets.target               systemd-random-seed.service            whoopsie.service
dbus-org.freedesktop.resolve1.service   local-fs.target                    rc-local.service                    sockets.target.wants         systemd-reboot.service                 wpa_supplicant.service
dbus-org.freedesktop.timedate1.service  local-fs.target.wants              rc.local.service                    sound.target                 systemd-remount-fs.service             x11-common.service
dbus.service                            machine.slice                      rc-local.service.d                  stop-bootlogd.service        systemd-resolved.service
hochob@server:/lib/systemd/system$ 
```

## Paths

```sh
hochob@server:/lib/systemd/system$ whereis hass
hass: /usr/local/bin/hass
hochob@server:/lib/systemd/system$ 
```

```sh
hochob@server:/lib/systemd/system$ ls /home/hochob/.homeassistant/
configuration.yaml  configuration.yaml.original  deps  groups.yaml  home-assistant.log  home-assistant_v2.db  tts
hochob@server:/lib/systemd/system$ 
```

## Extra Services

hochob@server:~$ sudo systemctl enable NetworkManager-wait-online.service
[sudo] password for hochob: 
hochob@server:~$ 


## File

```sh
hochob@server:/lib/systemd/system$ sudo nano home-assistant.service
```

```sh
[Unit]
Description=Home Assistant
After=NetworkManager-wait-online.service

[Service]
Environment=DISPLAY=:0.0
User=hochob
ExecStart=/usr/local/bin/hass -c /home/hochob/.homeassistant/

[Install]
WantedBy=multi-user.target
```

```sh
hochob@server:/lib/systemd/system$ sudo systemctl --system daemon-reload
hochob@server:/lib/systemd/system$ sudo systemctl enable home-assistant.service
Created symlink /etc/systemd/system/multi-user.target.wants/home-assistant.service → /lib/systemd/system/home-assistant.service.
hochob@server:/lib/systemd/system$ sudo systemctl start home-assistant.service
hochob@server:/lib/systemd/system$ sudo systemctl status home-assistant.service
● home-assistant.service - Home Assistant
   Loaded: loaded (/lib/systemd/system/home-assistant.service; enabled; vendor preset: enabled)
   Active: active (running) since dom 2017-03-19 12:45:27 CST; 6s ago
 Main PID: 11270 (hass)
    Tasks: 13 (limit: 4915)
   CGroup: /system.slice/home-assistant.service
           └─11270 /usr/bin/python3 /usr/local/bin/hass -c /home/hochob/.homeassistant/

mar 19 12:45:28 server hass[11270]: INFO:homeassistant.core:Bus:Handling <Event component_loaded[L]: component=logbook>
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.components.notify.telegram:Telegram bot is 'HochobBot'
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.core:Bus:Handling <Event service_registered[L]: service=hochobbot, domain=notify>
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.core:Bus:Handling <Event component_loaded[L]: component=notify>
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.bootstrap:Home Assistant initialized in 1.7s
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.core:Starting Home Assistant core loop
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.core:Starting Home Assistant
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.core:Bus:Handling <Event homeassistant_start[L]>
mar 19 12:45:29 server hass[11270]: INFO:homeassistant.core:Timer:starting
mar 19 12:45:30 server hass[11270]: INFO:homeassistant.core:Bus:Handling <Event state_changed[L]: old_state=<state sun.sun=above_horizon; azimuth=0, friendly_name=Sun, next_setting=2017-03-20T01:04:33+00:00, next_rising=2017-03-20T12:57:
lines 1-18/18 (END)
```

```sh
hochob@server:$ sudo journalctl -f -u home-assistant
-- Logs begin at dom 2017-03-19 16:08:27 CST. --
mar 19 16:14:25 server hass[1907]: 17-03-19 16:14:25 INFO (MainThread) [homeassistant.core] Bus:Handling <Event component_loaded[L]: component=logbook>
mar 19 16:14:26 server hass[1907]: 17-03-19 16:14:26 INFO (Thread-6) [homeassistant.components.notify.telegram] Telegram bot is 'HochobBot'
mar 19 16:14:26 server hass[1907]: 17-03-19 16:14:26 INFO (MainThread) [homeassistant.core] Bus:Handling <Event service_registered[L]: service=telegram, domain=notify>
mar 19 16:14:26 server hass[1907]: 17-03-19 16:14:26 INFO (MainThread) [homeassistant.core] Bus:Handling <Event component_loaded[L]: component=not
...
```


# Home Assistant: Automatic Startup: init.d

```sh
hochob@server:~$ ls /etc/init.d/
acpid       apport            cron         hwclock.sh         kmod             plymouth      resolvconf  ufw
alsa-utils  avahi-daemon      cups         irqbalance         lightdm          plymouth-log  rsync       uuidd
anacron     bluetooth         dbus         kerneloops         networking       pppd-dns      rsyslog     whoopsie
apparmor    console-setup.sh  grub-common  keyboard-setup.sh  network-manager  procps        udev        x11-common
hochob@server:~$ sudo /etc/init.d/hass-daemon
sudo: /etc/init.d/hass-daemon: command not found
hochob@server:~$ sudo nano /etc/init.d/hass-daemon
hochob@server:~$ sudo chmod +x /etc/init.d/hass-daemon
hochob@server:~$ sudo update-rc.d hass-daemon defaults
hochob@server:~$ sudo service hass-daemon install
Installing Home Assistant Daemon (hass-daemon)
hochob@server:~$ 
```

