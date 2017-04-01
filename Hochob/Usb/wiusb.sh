#!/bin/bash

for udi in $(/usr/bin/hal-find-by-capability --capability storage)
do
    device=$(hal-get-property --udi $udi --key block.device)
    vendor=$(hal-get-property --udi $udi --key storage.vendor)
    model=$(hal-get-property --udi $udi --key storage.model)
    if [[ $(hal-get-property --udi $udi --key storage.bus) = "usb" ]]
    then
        parent_udi=$(hal-find-by-property --key block.storage_device --string $udi)
        mount=$(hal-get-property --udi $parent_udi --key volume.mount_point)
        label=$(hal-get-property --udi $parent_udi --key volume.label)
        media_size=$(hal-get-property --udi $udi --key storage.removable.media_size)
        size=$(( ceil(media_size/(1000*1000*1000)) ))
        printf "$vendor  $model  $device  $mount  $label "${size}GB" \n"
    fi
done

