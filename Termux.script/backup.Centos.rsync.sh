#!/bin/bash

######## backupCentos.sh    ######
BDIR='/home/backup';
FDIR= '/';
EXCLUDE='{"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/home/backup/*","/media/*","/lost+found"}';

if [ -d $BDIR ]; then
    echo "Folder exists"
    cd /mnt && ln -s $BDIR;
    else
        mkdir $BDIR | echo 'Folder "$BDIR" is create';
fi

rsync -aAXv --delete-after --exclude=$EXCLUDE $FDIR $BDIR;
exit

#### Info ####
## For AutoBackup,save in /etc/cron.daily/backup
##link# curl --raw https://pastebin.com/raw/ddAdx23v > ~/backup.sh | chmod +x ~/backup.sh | cp -r ~/backup.sh /etc/cron.daily/backup | chmod +x /etc/cron.daily/backup;

##$ rsync -a --delete --quiet $FDIR $BDIR;

##$ rsync -aAXv --delete-after --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / /mnt/backup;

##$ rsync -aAXv --delete-after --exclude={"/boot/*","/etc/*","/lib/*","/media/*","/opt/*","/sbin/*","/sys/*","/usr/*","/bin/*","/dev/*","/home/*","/lib64/*","/mnt/*","/proc/*","/run/*","/srv/*","/tmp/*","/var/*"} / /home/backup;
