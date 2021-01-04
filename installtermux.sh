#!/bin/sh installtermux.sh

# start
apt update && apt upgrade -y
pkg install curl wget git micro openssl openssl ncurses-utils -y

# if hav root user
#$ pkg install tsu

# Эмуляция рут прав
pkg install root-repo -y
pkg install fakeroot -y
fakeroot

# Фикс исправления прав, если установили или обновились через tsu или tsudo
uid=$(id -u)
su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux
sleep 5


##############################
#### Кастомизации Termux  ####
##############################

apt install zsh micro wget curl
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
git clone https://github.com/Bhai4You/Termux-Banner
cd Termux-Banner/zsh
chmod +x requirement.sh t-ban.sh
bash requirement.sh
bash t-ban.sh
# 1 прописать то что будет под самим изображением
# 2 прописать то что будет написанно с верху маленьким шрифтом.

chsh -s zsh
echo "# внешняя кастомизация закончена #"
sleep 5




#############################
#### плюшки к shell zsh: ####
#############################
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cd $HOME
wget https://pastebin.com/raw/yJpsDYKM
mv yJpsDYKM zshrc.config
# cd $HOME && micro .zshrc
# Теперь вставьте скопированные настройки в .zshrc
echo "zshrc.config" > .zshrc

echo "Теперь доступны такие команды как:"
echo "google текст поиска"
echo "lcd $HOME"
echo "переходит в каталог и сразу показывает файлы == cd && ls"

# Чтоб поменять цвет
# ~/.termux/colors.sh

# Чтоб поменять шрифт
# ~/.termux/fonts.sh
echo "#### END ####"
sleep 5


###############################
#### Уст. instainsane
#### в termux/nethunter
###############################
echo "Установить в termux kali"
echo "В termuxe"
startkali

git clone https://github.com/thelinuxchoice/instainsane
cd instainsane
chmod +x instainsane.sh install.sh
./install.sh

echo "Теперь запускаем"
./instainsane.sh

# P.s. Брут работает только через WiFi, но есть способ обхода и теперь можно брутить с мобильного интернета, правда не всегда успешно коннектиться.

# Ну а теперь  сам метод:
# 1) Скачиваем Orbot (tor для мобилы)
# 2) Запускаем Orbot, снизу нажимаем шестеренку, выбираем termux, возвращаемся назад, нажимаем луковицу, ждём подключения и затем уже нажимаем VPN. 
# 3) Вот и все теперь весь трафик termuxa будет проходить через Tor. И можем брутить с мобильного интернета.


################################
#### Установка DarkFly в termux
#### (tools 500+) 
#### Множество разных инструментов:
################################

pkg install python2
pkg install git
pkg install php
git clone https://github.com/Ranginang67/DarkFly-Tool
cd DarkFly-Tool
chmod +x install.py
python2 install.py

echo "# Меню установщика запускаем"
echo "DarkFly"

echo "#### END ####"
sleep 5


##################################
#### Установка metasploit в termux:
##################################

pkg install unstable-repo && pkg install metasploit

echo "#### END ####"
sleep 5


##################################
#### Установка Tmux-Bunch в termux:
echo "P.s. Во время установки могут появляться не значительные ошибки, просто не обращаем внимание на них."

cd $HOME
apt install axel
axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz
tar -xf Tmux-Bunch-2.7.tar.gz
cd Tmux-Bunch
bash setup
echo "# Теперь запускаем из любого каталога"
#$ tmuxbunch

echo "#### END ####"
sleep 5


###############################
#### Установка Tmux:

echo "P.s: шпора по tmux: "
echo "https://habr.com/post/126996/"

pkg install tmux -y
tmux

echo "#### END ####"
sleep 5

###############################
#### Полный фарш на termux для Python:

pkg install micro python python2
pip install bpython ipython

echo "micro test.py"
echo "И начинаем кодить."

echo "#### END ####"
sleep 5


###############################
#### Установка Kali
###############################

# pkg install tsu
# tsudo

# curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter
# tsudo chmod +x kalinethunter
# tsudo ./kalinethunter --insecure

# запускаем Kali:
# tsudo startkali

# wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
# apt install ./kali-archive-keyring_2018.1_all.deb
# apt-get update
# apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

# Девятая команда удаляет старые пакеты, десятая команда чистит кэш:
# apt-get autoremove
# apt-get clean

# apt-get install tightvncserver

# После этих команд выполните:
# vncserver :1 -geometry 700x1400 -dpi 120

# Только замените на своё разрешение экрана.
#  потом введите пароль любой, нажмите enter и повтори пароль, потом нажми - Y/N
# Спрашивает нужен ли пароль для режима "просмотр"
# Y или N, решать Вам!

#Если ввели не верные значения, то:
# vncserver -kill :1
# И снова введите, но уже с изменёнными значениями
# vncserver :1 -geometry 720x1420 -dpi 120
# Включаем VNC: 
# У меня установлена программа bVNC и выглядят настройки так
# Вход из под Termux:
# tsudo startkali

# Запуск:
# vncserver :1 -geometry YYYxQQQ -dpi NNN

# (Где YYY, QQQ, NNN - Ваши значения)

#Выключение:
# vncserver -kill :1

# Выход в Termux:
# logout

echo "#### END ####"
sleep 5



###############################
####  Java в termux

echo "На Андроиде 9 могут быть проблемы (пробуйте)"
apt update && apt upgrade
apt install git
git clone https://github.com/Hax4us/java
mv java/openjdk/java /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/home/java/openjdk/bin/java

echo "#### END ####"
sleep 5



