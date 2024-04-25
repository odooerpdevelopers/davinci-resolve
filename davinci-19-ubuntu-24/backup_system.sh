#!/bin/bash
# backup entire root system / using tar
# execute this script from external USB Drive Memory or Partition
sudo tar -cvpzf backup-$(date --iso).tar.gz --exclude=/backup.tar.gz --one-file-system /

# go to backup folder and execute:
# Restore command (with root user and reboot)
# tar -xvpzf my_backup.tar.gz -C /

# option2 Rsync incremental backups
sudo rsync -avz --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /ruta/a/tu/instalacion/ubuntu/ /ruta/donde/guardar/la/copia/

