#!/bin/bash

## Перед работай с termux выполняем команды.

pkg install root-repo -y
pkg install science-repo -y
pkg install x11-repo -y
pkg install game-repo -y
pkg install termux-apt-repo -y
pkg install unstable-repo -y

apt update -y && apt upgrade -y

pkg install curl nano wget git micro openssl openssl-dev ncurses-utils -y

## У кого есть root, выполняем:
pkg install tsu

## Эмуляция рут прав
pkg install fakeroot
fakeroot

## Фикс исправления прав если
## установили или обновились
## через tsu или tsudo
uid=$(id -u)
su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux

echo "****  -select-  *****"
echo "*********************"
echo "  1) Кастомизация Termux"

echo "  2) Установка DarkFly (tools 500+) и Множество разных инструментов"
echo "  3) Установка metasploit"
echo "  4) Установка Tmux-Bunch"
echo "  5) Установка Tmux"
echo "  6) Полный фарш на для Python:"
echo "  7) Установка Kali"
echo "  8) Установка instainsane в termux/nethunter (Брут Instagram)"
echo "  9) Установка Java"
echo "*********************"






read n
case $n in
  1) # кастомизация Termux
  function kastomizationtermux {
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
echo "#* Прикручиваем плюшки к shell zsh: *#"
sleep 5
cd $HOME
git clone https://github.com/numbnet/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/numbnet/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/numbnet/zsh-completions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

# Делаем резервную копию
cp .zshrc > .zshrc.backup.sh

# Идем на github и копируем: 
cd $HOME && wget https://gist.githubusercontent.com/numbnet/16283d639aa316c8a1925c779dbd225c/raw/a88c5a72761d37089bd6d7d39ea32fe0f0ba4238/.zshrc.sh

# # Удалем все настройки которые по дефолту, чтоб быстрей удалить, выполните команду в termux 

## echo "" > .zshrc
cat .zshrc.sh > .zshrc

# Теперь вставьте скопированные настройки в .zshrc 
sleep 5
echo "# Открывает браузер с запросом в google: google текст поиска"
echo "# *** переходит в каталог и сразу показывает файлы == cd && ls ***: lcd ~/ "
echo" Чтоб поменять цвет: ~/.termux/colors.sh"
echo " Чтоб поменять шрифт: ~/.termux/fonts.sh"
echo "# ========END======== #"
sleep 5
}
kastomizationtermux
 ;;
 
 
 
 
  2) # Установка DarkFly
sleep 5
pkg install python2 git php -y
git clone https://github.com/Ranginang67/DarkFly-Tool

cd DarkFly-Tool
chmod +x install.py
python2 install.py

echo "Меню установщика запускаем: DarkFly"
DarkFly
 ;;
 
 
 
 
  3) # Установка metasploit в termux:

function installmetasplout {
    sleep 5
cd $HOME
pkg install unstable-repo
pkg install metasploit

# Обновляем
apt update -y && apt upgarde -y

# Устанавливаем Wget :
apt install wget -y

# Скачиваем скрипт установки Metasploit-Framework:
wget https://gist.githubusercontent.com/numbnet/16283d639aa316c8a1925c779dbd225c/raw/e7d60e3720df67a7091a2c572dff1ea422a7fbf8/metasploit.sh

# Запуск скрипт установки:
chmod +x metasploit.sh
bash metasploit.sh

# Переходим в папку с установленным Metasploit:
cd metasploit-framework

# Запускаем msfconsole!:
./msfconsole
}

installmetasplout
 ;;
 
 
 
  4) # Установка Tmux-Bunch в termux:
sleep 5
cd $HOME
apt install axel -y

# axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz
axel https://github.com/numbnet/Tmux_Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz
tar -xf Tmux-Bunch-2.7.tar.gz
cd Tmux-Bunch
bash setup

# Теперь запускаем из любого каталога
tmuxbunch
# =========END========== #
 ;;
 
 
 
  5) # Установка Tmux:
  function installtmux {
cd $HOME
pkg install tmux -y
tmux

echo "# P.s: шпора по tmux:"
echo "#> https://habr.com/post/126996"
sleep 5

echo "# =========END========= #"
};

installtmux
 ;;
 
 
 
  6) # Полный фарш на termux для Python:
  function installpython {
sleep 5
cd $HOME
pkg install micro python python2 nano -y

pkg install python -y || pkg reinstall python -y
pkg install python2 -y || pkg reinstall python2 -y
echo hello > test.py
./test.py
echo "# =========END========= #"
}

installpython
 ;;
 
 
 
  7) # Установка Kali
  function installkali {
sleep 5
## у кого активировано su в Termux  ##
cd $HOME
curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter
chmod +x kalinethunter  # tsudo chmod +x kalinethunter
./kalinethunter --insecure  # tsudo ./kalinethunter --insecure

#запускаем Kali:
startkali  # tsudo startkali

# wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
# apt install ./kali-archive-keyring_2018.1_all.deb
wget https://http.kali.org/pool/main/k/kali-archive-keyring/kali-archive-keyring_2020.2_all.deb
apt install ./kali-archive-keyring_2020.2_all.deb
apt-get update
apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base

# удаляет старые пакеты:
apt-get autoremove

# чистит кэш:
apt-get clean

apt-get install tightvncserver

#После этих команд выполните:
vncserver :1 -geometry 700x1400 -dpi 320

###############
## Только замените на своё разрешение экрана.  потом введите пароль любой, нажмите enter и повтори пароль, потом нажми - Y/N Спрашивает нужен ли пароль для режима "просмотр" Y или N, решать Вам!
################

#Если ввели не верные значения, то:
# vncserver -kill :1

#И снова введите, но уже с изменёнными значениями
#  vncserver :1 -geometry 720x1420 -dpi 120

#Включаем VNC:
# установлена bVNC и выглядят настройки так

#Вход из под Termux:
# startkali # tsudo startkali

#Запуск:
# vncserver :1 -geometry 240x320 -dpi 

#(Где YYY, QQQ, NNN - Ваши значения)
#Выключение:
# vncserver -kill :1

#Выход в Termux:
# logout

# =========END========= #
}
installkali
 ;;
 
 
 
  8) # Установка instainsane в termux/nethunter (Брут Instagram)
   # Установить в termux kali 
   installkali
   # В termuxe
   startkali
   git clone https://github.com/thelinuxchoice/instainsane
   cd instainsane
   chmod +x instainsane.sh install.sh
   ./install.sh
   # Теперь запускаем
   ./instainsane.sh
   
   
   # P.s. Брут работает только через WiFi, но есть способ обхода и теперь можно брутить с мобильного интернета, правда не всегда успешно коннектиться
   # Ну а теперь  сам метод:
   # 1) Скачиваем Orbot (tor для мобилы)
   # 2) Запускаем Orbot, снизу нажимаем шестеренку, выбираем termux, возвращаемся назад, нажимаем луковицу, ждём подключения и затем уже нажимаем VPN. 
   #3) Вот и все теперь весь трафик termuxa будет проходить через Tor. И можем брутить с мобильного интернета.
 
 
 
 
  9) # Java
apt update && apt upgrade
pkg install git wget -y
cd $HOME && git clone https://github.com/numbnet/Termux-Java-Install.git
cd ~/Termux-Java-Install && chmod +x *java*
bash installjava


## Remove
# cd ~/Termux-Java-Install && bash uninstall_java.sh

echo "==END install Java=="
 ;;
  10)cd $HOME
 echo "You chose Option $n"
 ;;
  11)cd $HOME
 echo "You chose Option $n"
 ;;
  12)cd $HOME
 echo "You chose Option $n"
 ;;
  *)cd $HOME
 echo "Exit"
 ;;
esac
