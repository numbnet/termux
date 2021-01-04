#!/bin/bash

###   Backup and Restore for restic  ###
#  разрешение на общее хранилища
termux-setup-storage

##  Запускаем update   ##
apt update && apt upgrade

echo "#########     RESTIC    ###########"
echo "##            Backup and Restore              ##"
echo "#############################"

## Делаем Символическую ссылку
##  ln -s $HOME/sdcard $HOME/storage/shared

# mkdir $HOME/storage/shared/Directory

## ======      END  ПРОВЕРКИ      ======= ##
## ================================= ##



# echo "# # # # #    START   # # # # # #"
# echo "##                                              ##"
# echo "##                Backup                ##"
# echo "# # # # # # # # # # # # # # # #"

# Рез.копию только sysroot,НЕ $HOME Backup будет хран в общем хранилище.
#- echo "!!!  ==  Шифрования вкл. ==  !!!"
#- echo " !!!!    нет способа откл ючить, ЕСЛИ  PASS утерян === заблокирован  !";

#-> echo " ==      START BACKUP       ===";
#-> echo "==       sysroot ($PREFIX)        ==  ";
#-> restic backup -r /sdcard/Directory/termux-backups --tag sysroot-termux $PREFIX

##  Тег не обязателен,но будет полезен в случае, если вы решите сделать резервную копию нескольких каталогов в одном хранилище, Делаем рез.копию дом.каталога:
#-> restic backup -r /sdcard/Directory/termux-backups --tag termux-home $HOME

#- echo "#####        END BACKUP       #####"
#- echo "##########################";




echo "# # # # #    START   # # # # # #"
echo "##                                              ##"
echo "##              Restoring              ##"
echo "##                                              ##"
echo "# # # # # # # # # # # # # # # #"

##  Как и в случае резервных копий на основе tar, восстановление sysroot довольно сложно. Cледующие шаги применимы только для локальных резервных копий:
echo " =======         1  STAP           ======"
echo "=== Проверка установки Restic. === ";
pkg install restic

echo " =======         2  STAP           ======"
echo "Скопируйте бинарный файл Restic в $ HOME.  Мы собираемся стереть sysroot."
cp $PREFIX/bin/restic $HOME/restic

echo " =======         3  STAP           ======"
echo ".Сотрите sysroot.  Все пакеты будут удалены."
rm -rf $PREFIX

echo " =======         4  STAP           ======"
echo "Восстанов.sysroot из последнего снимка: "
unset LD_PRELOAD
$HOME/restic restore -r  /sdcard/Directory/termux-backups --tag termux --target / latest
