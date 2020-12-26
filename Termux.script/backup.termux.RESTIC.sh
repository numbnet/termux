#!/bin/sh

##==================≠==================
#=       ==Backing up Termux==
##       ==BACKUP== ==RESTIC== 
##==================≠==================

##==================≠==================
# Ensure that storage permission is granted:
termux-setup-storage

##==================≠==================
# Create Dir
cd $HOME
mkdir -p $HOME/storage/emulated
ln -s /storage/emulated/0 $HOME/storage/emulated/0

##==================≠==================
# create dir Repo RESTIC 
RESTIC_REPOSITORY=$HOME/storage/shared/Directory/restic-repo
if [[ ! -e $RESTIC_REPOSITORY ]];
	then
		mkdir $RESTIC_REPOSITORY;
		# environment variable permanently is put below statement in your script,
		#if [[ ! -d "$VARNAME" ]]; then 
		#   export VARNAME="$VARVALUE"
		#   echo 'export "$VARNAME"="$VARVALUE"' >> ~/.bashrc
		#fi

		TMPDIR=$PREFIX/tmp
		XDG_CACHE_HOME=$HOME/.cache
		RESTIC_CACHE_DIR=$PREFIX/var/cache
		RESTIC_REPOSITORY=$HOME/storage/shared/Directory/restic-repo

		export TMPDIR=$PREFIX/tmp
		export XDG_CACHE_HOME=$HOME/.cache
		export RESTIC_CACHE_DIR=$PREFIX/var/cache
		 
		echo 'export TMPDIR=$PREFIX/tmp' >> ~/.bashrc
		echo 'export XDG_CACHE_HOME=$HOME/.cache' >> ~/.bashrc
		echo 'export RESTIC_CACHE_DIR=$PREFIX/var/cache' >> ~/.bashrc

		
			elif [[ ! -d $RESTIC_REPOSITORY ]];
	then
		echo "$RESTIC_REPOSITORY exists, but is not a dir" 1>&2
		rm -rf $RESTIC_REPOSITORY && mkdir $RESTIC_REPOSITORY;
fi


# mkdir -p $HOME/storage/shared/Directory/restic-repo

##== Restic is a utility for doing incremental backups. It can work with both local and remote backups. Backed up data is encrypted and de-duplicated. This package is not available by default. Install it with the following command:
# echo "name pkg:" & read PKG;

WGET=`which wget 2> /dev/null`
BUSYBOX=`which busybox 2> /dev/null`
MICRO=`which miocro 2> /dev/null`
NANO=`which nano 2> /dev/null`
CURL=`which curl 2> /dev/null`
RESTIC=`which restic 2> /dev/null`
TAR=`which tar 2> /dev/null`
$PKG='wget busybox miocro nano curl restic tar';

if test "-$WGET-" = "--" || test "-$BUSYBOX-" = "--" || test "-$MICRO-" = "--" || test "-$NANO-" = "--" || test "-$CURL-" = "--" || test "-$RESTIC-" = "--"|| test "-$TAR-" = "--"
then
    echo "You must install $PKG"
	sleep 5;
    apt install $PKG -y;
#  exit 1
else
   echo "$PKG is installed";

fi

# Notice: restic is for advanced users only. 
# While it provides more features than tar, it is harder in use.
# Most people will use it in scripts rather than manually in the command line.
# Instructions here provided only as an example.

#  restic -r /srv/restic-repo backup ~/work

##==================≠==================
## BACKUP
echo "#==  START Backing up ==#"
# These steps will backup only sysroot (prefix) and not your home. The repository will be stored on shared storage.
##== Initialize local restic repository. You will be prompted for a password because encryption is enabled (no way to turn off). If the password is lost - your data will be locked forever.

##==================≠==================
## INIT
echo "##  ====INIT====  ##"
restic init -r $RESTIC_REPOSITORY
sleep 5

##==================≠==================
## Backing up sysroot ($PREFIX):
echo "##  ==Backup SYSROOT==  ##"
restic backup -r $RESTIC_REPOSITORY --tag termux $PREFIX

##==================≠==================
## Backup ($HOME) directory in this way:
echo "##== Backing up ( $HOME ): "
sleep 5
restic backup -r $RESTIC_REPOSITORY --tag termux-home $HOME

##==================≠==================
## END EXIT
echo "#== END ==#"
sleep 5

exit





##==================≠==================
#==         Restoring
##==================≠==================

# Same as with tar-based backups, restoring of sysroot is tricky. Following steps are applicable only for local backups:

##==================≠==================
##== Make sure that restic is available install restic
#$ pkg install restic

##==================≠==================
##== Ensure that storage permission is granted:
#$ termux-setup-storage

##==================≠==================
##Copy restic binary to $HOME. We are going to erase sysroot.
#$ cp $PREFIX/bin/restic $HOME/restic

##==================≠==================
##== Erase sysroot. All packages will be deleted.
#$ rm -rf $PREFIX

##==================≠==================
##== Restore sysroot from latest snapshot:
#$ unset LD_PRELOAD
#$ $HOME/restic restore -r $RESTIC_REPOSITORY --tag termux --target / latest

##== If everything is done right, you should now have a Termux restored from the backup. Close your Termux application and open it again.
##== Tip: if you do not want to enter a restic password or specify repository each time, you can set environment variables "RESTIC_PASSWORD" and "RESTIC_REPOSITORY".
