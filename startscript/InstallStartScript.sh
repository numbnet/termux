#!/bin/sh installstartScript.sh

cd $HOME
apt update && apt upgrade -y
pkg install curl wget git micro openssl openssl ncurses-utils -y

function NotHaveRoot() {
# исправление для SUDO:
	pkg install fakeroot -y
	uid=$(id -u)
	su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux
}

# Если есть root Y, если нет N, выполняем:
while true; do
read -e -p "Если есть root, выполняем: (y/n)? " rsn
  case $rsn in
    [Yy]* ) pkg install tsu -y;;
    [Nn]* ) NotHaveRoot; break;
  esac
done



##=====================================================
## Установка instainsane в termux/nethunter (Брут Instagram)
echo 'Установка instainsane в termux/nethunter (Брут Instagram)'
./installstart/install-shellzsh.sh


##=====================================================
## Установка DarkFly (tools 500+)
echo 'Установка DarkFly (tools 500+)'
sh ./installstart/install-DarkFly.sh



##=====================================================
## "Установка metasploit в Termux"
echo 'Установка metasploit в Termux'
sh ./installstart/install-metasploit.sh



##=====================================================
## Установка Tmux-Bunch в termux (аналог apktool)
echo "Установка Tmux-Bunch в termux (аналог apktool)"
sh ./installstart/install-Tmux-Bunch.sh



##=====================================================
## Установка Tmux
echo "Установка Tmux (менеджер терминалов, работа в нескольких окнах одновременно)"
sh ./installstart/install-Tmux.sh



##=====================================================
## Всё для работы с Python Полный фарш на termux для Python
echo "Всё для работы с Python Полный фарш на termux для Python:"
sh ./installstart/install-Python.sh



##=====================================================
## Установка Kali
echo "Установка Kali"
# sh ./installstart/install-kali.sh



##=====================================================
## Java в termux
echo "Java в termux"
sleep 3
sh ./installstart/install-Java.sh



PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
	;;
        "Option 2")
            echo "== KOD 2 =="
            ;;
        "Option 3")
            echo "== KOD 3 =="
            echo "== KOD $REPLY =="
            echo "== $opt =="
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

