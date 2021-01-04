#!/bin/sh startTERMUX.sh


#########################################
## START First install termux
#########################################
sleep 5
cd $HOME
apt update -y && apt upgrade -y
pkg install curl wget git micro openssl openssh ncurses-utils -y

function activateroot {
    
    ## Eсть root,но не активирован: ###
    cd $HOME
    pkg install tsu
    tsudo
    
}

# Активация root
activateroot

# Эмуляция рут прав
pkg install fakeroot
fakeroot

# Исправлееия розрешения 
uid=$(id -u)
su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux
################# -END- #################



#########################################
## Кастомизации termux
## выполняем под обычным пользователем
#########################################
sleep 5
cd $HOME
apt install zsh micro wget curl
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
git clone https://github.com/Bhai4You/Termux-Banner
cd Termux-Banner/zsh
chmod +x requirement.sh t-ban.sh
bash requirement.sh
bash t-ban.sh
chsh -s zsh
echo "Kastomization is end"
################# -END- #################



#########################################
## Прикручивать плюшки к shell zsh:
#########################################
sleep 5
cd $HOME
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
wget https://pastebin.com/raw/yJpsDYKM
cat yJpsDYKM > .zshrc
################# -END- #################



#########################################
## Установка DarkFly в termux(tools 500+)
## Множество разных инструментов:
#########################################
sleep 5
cd $HOME
pkg install -y python2 git php
git clone https://github.com/Ranginang67/DarkFly-Tool
cd DarkFly-Tool
chmod +x install.py
python2 install.py
echo "Меню установщика запускаем командой: DarkFly"
# DarkFly
#*********** -END- ***********#
