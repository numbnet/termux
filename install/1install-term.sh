#Инструкции по разным установкам!
    # Перед работай с termux выполняем команды:
apt update && apt upgrade -y

pkg install curl wget git micro openssl ncurses-utils -y

#####################
##  Add REPOSITORY ##

pkg install root-repo
pkg install unstable-repo




# У кого есть root, выполняем:
# pkg install tsu

## Эмуляция рут прав
pkg install fakeroot
fakeroot

## Фикс исправления прав, если установили или обновились через tsu или tsudo
uid=$(id -u)

su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux

##############################
    ## Кастомизации Termux
## Приступаем к кастомизации нашего termux, все действия выполняем под обычным пользователем не под root
##Все шаги выполняем по порядку:

apt install zsh micro wget curl -y

sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"

git clone https://github.com/Bhai4You/Termux-Banner

cd Termux-Banner/zsh
chmod +x requirement.sh t-ban.sh
bash requirement.sh
bash t-ban.sh

## После последнего действия необходимо прописать свой никнейм или же любое слово которое будет под самим изображением
## Затем прописывайте то что будет написанно с верху маленьким шрифтом.
chsh -s zsh

## Открываем новую сессию, и наблюдаем новые изменения. На этом внешняя кастомизация закончена.

#########     END     #########
###############################

###############################
#########    START    #########

    ##  Теперь начинаем прикручивать плюшки к shell zsh:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

##  Идем на пасту то есть сюда https://pastebin.com/yJpsDYKM и копируем настройки или ...
##  ... загружаем файл настроек
wget https://pastebin.com/raw/yJpsDYKM

##  В termux вводим
# cd $HOME && micro .zshrc

##  Делаем бекап
cd $HOME && cp .zshrc .zshrc.backup

##  Удалем все настройки которые по дефолту, чтоб быстрей удалить, выполните команду в termux
cat ~/yJpsDYKM > ~/.zshrc

## Теперь вам доступны такие команды как:
google установка termux

##  Открывает браузер с вашим запросом в google

lcd ~/

##  переходит в каталог и сразу показывает файлы == cd && ls

##  Чтоб поменять цвет
~/.termux/colors.sh

##  Чтоб поменять шрифт
~/.termux/fonts.sh

##  Ну вот и всё готово, теперь открываем новую сессию и пользуемся... Удачи!
#########     END     #########
###############################

###############################
#########    START    #########
    ##  Установка instainsane в termux/nethunter (Брут Instagram)

##  1) Установить в termux kali
##  2) В termuxe

startkali

git clone https://github.com/thelinuxchoice/instainsane

cd instainsane

chmod +x instainsane.sh install.sh

./install.sh

## 7) Теперь запускаем
./instainsane.sh

echo "-- P.s. Брут работает только через WiFi, но есть способ обхода и теперь можно брутить с мобильного интернета, правда не всегда успешно коннектиться.";

echo "Ну а теперь сам метод:
- Скачиваем Orbot (tor для мобилы)
- Запускаем Orbot, снизу нажимаем шестеренку, выбираем termux, возвращаемся назад, нажимаем луковицу, ждём подключения и затем уже нажимаем VPN.
- Вот и все теперь весь трафик termuxa будет проходить через Tor. И можем брутить с мобильного интернета.";
#########     END     #########
###############################

###############################
#########    START    #########
    ##  Установка DarkFly (tools 500+).  Множество разных инструментов:
pkg install python2

pkg install git

pkg install php

git clone https://github.com/Ranginang67/DarkFly-Tool

cd DarkFly-Tool

chmod +x install.py

python2 install.py

##  Меню установщика запускаем командой
DarkFly
#########     END     #########
###############################

###############################
#########    START    #########
    ##  Установка metasploit в Termux
    
pkg install unstable-repo && pkg install metasploit

#########     END     #########
###############################

###############################
#########    START    ######### 
    ##  Установка Tmux-Bunch в termux (аналог apktool)

cd $HOME

apt install axel

axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz
tar -xf Tmux-Bunch-2.7.tar.gz

## или для OREO
# axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7-oreo.tar.gz

# tar -xf Tmux-Bunch-2.7-oreo.tar.gz

cd Tmux-Bunch

bash setup

##  Теперь запускаем из любого каталога
tmuxbunch

##  P.s. Во время установки могут появляться не значительные ошибки, просто не обращаем внимание на них.
#########     END     #########
###############################

###############################
#########    START    #########
    ##  Установка Tmux (менеджер терминалов, работа в нескольких окнах одновременно)

pkg install tmux -y
tmux

echo "-- P.s: шпора по tmux:
https://habr.com/post/126996/  ";

#########     END     #########
###############################

###############################
#########    START    ######### 
    ##  Всё для работы с Python
    ##  Полный фарш на termux для Python:

pkg install micro python python2
pip install bpython ipython

micro test.py

##  И начинаем кодить.
echo " Предупреждение! Установка долгая!!!  ";
#########     END     #########
###############################

###############################
#########    START    #########
    ## Установка Kali

 # 

Для тех, у кого активировано su в Termux

curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter

tsudo chmod +x kalinethunter

tsudo ./kalinethunter --insecure

    # =============
    ##  Для тех, у кого есть root права, но они не активированы в Termux
    # pkg install tsu
    # tsudo
    # =============
##  запускаем Kali:

tsudo startkali

wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb

apt install ./kali-archive-keyring_2018.1_all.deb

apt-get update

apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

##  команда удаляет старые пакеты:
apt-get autoremove

##  команда чистит кэш:
apt-get clean

apt-get install tightvncserver

##  После этих команд выполните:
vncserver :1 -geometry 700x1400 -dpi 120

##  Только замените на своё разрешение экрана. потом введите пароль любой, нажмите enter и повтори пароль, потом нажми - Y/N
##  Спрашивает нужен ли пароль для режима "просмотр" Y или N, решать Вам!

##  Если ввели не верные значения, то:
vncserver -kill :1

##  И снова введите, но уже с изменёнными значениями

# vncserver :1 -geometry 720x1420 -dpi 120

##  Включаем VNC:
##  У меня установлена программа bVNC и выглядят настройки так

##  Вход из под Termux:
tsudo startkali

##  Запуск:
vncserver :1 -geometry YYYxQQQ -dpi NNN
(Где YYY, QQQ, NNN - Ваши значения)

##  Выключение:
vncserver -kill :1

##  Выход в Termux:
logout

##########     END     #########
###############################

###############################
#########    START    #########
##  Установка Java в termux

apt update && apt upgrade

apt install git

git clone https://github.com/Hax4us/java

mv java/openjdk/java /data/data/com.termux/files/usr/bin

chmod +x /data/data/com.termux/files/home/java/openjdk/bin/java

#########     END     #########
###############################
