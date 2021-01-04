#!/bin/bash

apt update && apt upgrade -y
pkg install curl wget git micro openssl openssl ncurses-utils -y

#У кого есть root, выполняем:
#  pkg install tsu
# Эмуляция рут прав
pkg install fakeroot
uid=$(id -u)
su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux

#### кастомизация TERMUX 
#
apt install zsh micro wget curl
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
git clone https://github.com/Bhai4You/Termux-Banner
cd Termux-Banner/zsh
chmod +x requirement.sh t-ban.sh
bash requirement.sh
bash t-ban.sh
chsh -s zsh
##### крутим плюшки ######
echo "крутим плюшки"
bash ~/kastom-plushki.sh




