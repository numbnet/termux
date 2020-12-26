#!/bin/sh

##==================≠==================
#== Backing up Termux ==#
##==================≠==================

# On this page, you will find some methods of backing up and restoring your Termux installation. It is highly recommended to understand what commands listed here do before copy-pasting them. Misunderstanding the purpose of each step may irrecoverably damage your data, if that happened to you - do not complain.

##==================≠==================
##  ==BACKUP==   ==TAR==  ##
##==================≠==================
# Archiving sysroot and home directories is the simplest way to backup your data. You can install it using TAR.
#$ pkg install tar

#==    START     ==#
#== Backing up ==#

# In this example, a backup of both home and sysroot will be shown. The resulting archive will be stored on your shared storage (/sdcard) and compressed with gzip.
##== Ensure that storage permission is granted:
#$ termux-setup-storage

##==================≠==================
##== Go to Termux base directory:
#$ cd /data/data/com.termux/files

##==================≠==================
# 2.2 Create Dir
#$ mkdir -p /sdcard/Directory/termux-backup-tar

##==================≠==================
##== Backing up files:
#$ tar -zcvf /sdcard/Directory/termux-backup-tar/termux-backup.tar.gz home usr

# Backup should be finished without any error. There shouldn't be any permission denials unless the user abused root permissions. Warnings about sockets are okay.
# Warning: never store your backups in Termux private directories. Their paths may look like:
# /data/data/com.termux		# - private Termux directory on internal storage
# /sdcard/Android/data/com.termux		# - private Termux directory on shared storage
# /storage/XXXX-XXXX/Android/data/com.termux		# -private Termux directory on external storage, XXXX-XXXX is the UUID of your micro-sd card.
# ${HOME}/storage/external-1		# - alias for Termux private directory on your micro-sd.

# Once you clear Termux data from settings, these directories will be erased too. Unconditionally.

##==================≠==================
#==       Restoring 
##==================≠==================

# Instructions for home directory and usr (sysroot or prefix) are separate, though if you did backup in the way shown above, these directories are stored in the same archive. There also will be assumed you have granted access to shared storage and your archive is stored at  /sdcard/Directory/termux-backup-tar/termux-backup.tar.gz  . By following these instructions all your Termux files will be overwritten with ones from back up.

#== Home directory ==#
##== Go to Termux base directory:
#$ cd /data/data/com.termux/files

##== Replace home directory with one from your backup:
#$rm -rf home
#$ tar -zxvf /sdcard/Directory/termux-backup-tar/termux-backup.tar.gz home

##== The home directory isn't runtime-critical, no additional steps like closing/re-opening Termux required.

#=== Sysroot (prefix) ===#

##== Go to Termux base directory:
#$ cd /data/data/com.termux/files

##== Copy busybox binary in the way shown here. You can't use any other archiver binary here as only busybox doesn't have dependencies which will gone in next step.
#$ pkg install busybox
#$ cp ./usr/bin/busybox ./tar

##== Erase sysroot. At this point, all packages will be deleted.
#$ rm -rf usr

##== Restore sysroot from backup:
#$ unset LD_PRELOAD
#$ ./tar -zxvf /sdcard/termux-backup.tar.gz usr

##==================≠==================
##== Now close Termux with the "exit" button from notification and open it again.
#$ exit

##=================END=================
##==================≠==================