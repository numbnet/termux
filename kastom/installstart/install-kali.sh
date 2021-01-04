

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

