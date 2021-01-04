
sleep 3
#####################################
sleep 3
cd $HOME
apt update && apt upgrade -y
pkg install curl wget git micro openssl openssl-dev ncurses-utils -y

# У кого есть root, выполняем:
pkg install tsu

# Эмуляция рут прав
pkg install fakeroot
fakeroot

uid=$(id -u)
su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux


sleep 3
#####################################
### Приступаем к кастомизации нашего termux, все действия выполняем под обычным пользователем не под root
sleep 3
cd $HOME
apt install zsh micro wget curl
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
git clone https://github.com/Bhai4You/Termux-Banner
cd Termux-Banner/zsh
chmod +x requirement.sh t-ban.sh
bash requirement.sh
bash t-ban.sh
chsh -s zsh



sleep 3
#####################################
### Теперь начинаем прикручивать плюшки к shell zsh:
sleep 3
cd $HOME
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
wget https://pastebin.com/raw/yJpsDYKM
cat yJpsDYKM > .zshrc



sleep 3
#####################################
### Установка DarkFly в termux (tools 500+) Множество разных инструментов:
sleep 3
cd $HOME
pkg install python2
pkg install git
pkg install php
git clone https://github.com/Ranginang67/DarkFly-Tool
cd DarkFly-Tool
chmod +x install.py
python2 install.py
echo "Меню установщика запускаем командой: DarkFly"
echo DarkFly



sleep 3
#####################################
### Установка metasploit в termux:
sleep 3
cd $HOME
pkg install unstable-repo
pkg install metasploit



sleep 3
#####################################
### Установка Tmux-Bunch в termux:
sleep 3
cd $HOME
apt install axel
axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz
tar -xf Tmux-Bunch-2.7.tar.gz
cd Tmux-Bunch
bash setup
### Теперь запускаем из любого каталога
tmuxbunch


sleep 3
#####################################
### Установка Tmux:
sleep 3
cd $HOME
kg install tmux -y
tmux


sleep 3
#####################################
### Полный фарш на termux для Python:
sleep 3
cd $HOME
pkg install micro python python2
pip install bpython ipython
micro test.py



sleep 3
#####################################
# Установка Kali
sleep 3
cd $HOME


####### Для тех, у кого активировано su в Termux  #######
#
sleep 3
cd $HOME
curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter
tsudo chmod +x kalinethunter
tsudo ./kalinethunter --insecure
#запускаем Kali:
tsudo startkali
wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
apt install ./kali-archive-keyring_2018.1_all.deb
apt-get update
apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

#Девятая команда удаляет старые пакеты, десятая команда чистит кэш:
apt-get autoremove
apt-get clean
apt-get install tightvncserver
#После этих команд выполните:
vncserver :1 -geometry 700x1400 -dpi 120

###############
## Только замените на своё разрешение экрана. 
## потом введите пароль любой, нажмите enter и повтори пароль,
## потом нажми - Y/N Спрашивает нужен ли пароль для
## режима "просмотр" Y или N, решать Вам!
################

#Если ввели не верные значения, то:
vncserver -kill :1
#И снова введите, но уже с изменёнными значениями
vncserver :1 -geometry 720x1420 -dpi 120
#Включаем VNC:
#У меня установлена программа bVNC и выглядят настройки так
# Выхлоп:
 #На всякий...
#Вход из под Termux:
tsudo startkali
#Запуск:
vncserver :1 -geometry YYYxQQQ -dpi NNN
#(Где YYY, QQQ, NNN - Ваши значения)
#Выключение:
vncserver -kill :1
#Выход в Termux:
logout

############
#### Для тех, у кого есть root права, но они не активированы в Termux ###

sleep 3
cd $HOME
pkg install tsu
tsudo
# И выполняем все перечисленные действия из спойлера - выше.

sleep 3
cd $HOME
curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter
tsudo chmod +x kalinethunter
tsudo ./kalinethunter --insecure
#запускаем Kali:
tsudo startkali
wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
apt install ./kali-archive-keyring_2018.1_all.deb
apt-get update
apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

#Девятая команда удаляет старые пакеты, десятая команда чистит кэш:
apt-get autoremove
apt-get clean
apt-get install tightvncserver
#После этих команд выполните:
vncserver :1 -geometry 700x1400 -dpi 120

###############
## Только замените на своё разрешение экрана. 
## потом введите пароль любой, нажмите enter и повтори пароль,
## потом нажми - Y/N Спрашивает нужен ли пароль для
## режима "просмотр" Y или N, решать Вам!
################

#Если ввели не верные значения, то:
vncserver -kill :1
#И снова введите, но уже с изменёнными значениями
vncserver :1 -geometry 720x1420 -dpi 120
#Включаем VNC:
#У меня установлена программа bVNC и выглядят настройки так
# Выхлоп:
 #На всякий...
#Вход из под Termux:
tsudo startkali
#Запуск:
vncserver :1 -geometry YYYxQQQ -dpi NNN
#(Где YYY, QQQ, NNN - Ваши значения)
#Выключение:
vncserver -kill :1
#Выход в Termux:
logout



#####################################
### Инструкция по установке Java в termux
sleep 3
cd $HOME
apt update && apt upgrade
apt install git
git clone https://github.com/Hax4us/java
mv java/openjdk/java /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/home/java/openjdk/bin/java



echo #### END ####
sleep 3
exit 0
#####################################