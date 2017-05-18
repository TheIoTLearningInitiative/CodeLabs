#!/bin/sh

systemctl disable bluetooth-rfkill-event.service
systemctl disable bluetooth.service
systemctl disable clloader.service
systemctl disable dbus-org.bluez.service
systemctl disable mcu_fw_loader.service
systemctl disable mdns.service
systemctl disable mosquitto.service
systemctl disable ofono.service
systemctl disable pulseaudio.service
systemctl disable pwr-button-handler.service
systemctl disable redis.service
systemctl disable sketch-check.service
systemctl disable sketch_reset.service
systemctl disable wyliodrin-hypervisor.service
systemctl disable wyliodrin-server.service
systemctl disable xdk-daemon.service

# End Of File
