#!/bin/bash

########### info ###############
##  Avtor: Zus Yurii
##  Data: 15-02-2020
##  time: 18:48:30
##  Nsme: 
############  START. ############
##     Резервное копирование     ##
## Backup будет в общем хран. ##
############  START. ############

echo  "# Инициал.локальный репо Restic  #";
restic init -r ~/storage/shared/Directory/termux-backups

echo "# === BACKUP sysroot ($PREFIX) #"
restic backup -r ~/storage/shared/Directory/termux-backups --tag sysroot-termux $PREFIX
# Тег не обязателен,НО  будет полезен в случае,  если вы решите сделать  резервную копию нескольких каталогов в одном хранилище.

echo "# Рез.копию дом.каталога:   $HOME  #"
restic backup -r ~/storage/shared/Directory/termux-backups --tag termux-home $HOME
###########  END  ###############

# # # # # # #
# Restoring #
# # # # # # #
# Same as with tar-based backups, restoring of sysroot is tricky. Following steps are applicable only for local backups:

# 1. Make sure that restic is available:
#$pkg install restic

# 2. Copy restic binary to $HOME. We are going to erase sysroot.
#$ cp $PREFIX/bin/restic $HOME/restic

# 3.Erase sysroot. All packages will be deleted.
#$ rm -rf $PREFIX

# 4.Restore sysroot from latest snapshot:
#$ unset LD_PRELOAD
#$ $HOME/restic restore -r /sdcard/termux-backups --tag termux --target / latest

############################

echo "# = = = = = = = = = = = = = = = = = = = #"
echo "# = = = = = = = =   END   = = = = = = = #"
done