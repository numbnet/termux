#!/usr/bin/env bash

echo "#===Termux Backup===#"

##  Go to direct FILES
cd /data/data/com.termux/files

 mkdir -p /sdcard/Directory/termux_backup_tar
 tar -czvf /sdcard/Directory/termux_backup_tar/termux-backups.tar.gz –owner=0 –group=0 home usr
 
#$ mkdir -p /sdcard/Directory/termux_backup_dir && tar cf - . | ( cd /sdcard/Directory/termux_backup_dir ; tar xf - )

echo "#===END Backup===#"

#$ echo "#===Termux Restore===#"

#$ cd /data/data/com.termux/files
#$ tar -xvzf /sdcard/Directory/termux_backup_dir/termux-backups.tar.gz
