#!/bin/sh

systemctl enable bluetooth-rfkill-event.service
systemctl enable bluetooth.service
systemctl enable clloader.service
systemctl enable dbus-org.bluez.service
systemctl enable mcu_fw_loader.service
systemctl enable mdns.service
systemctl enable mosquitto.service
systemctl enable ofono.service
systemctl enable pulseaudio.service
systemctl enable pwr-button-handler.service
systemctl enable redis.service
systemctl enable sketch-check.service
systemctl enable sketch_reset.service
systemctl enable wyliodrin-hypervisor.service
systemctl enable wyliodrin-server.service
systemctl enable xdk-daemon.service

# End Of File
