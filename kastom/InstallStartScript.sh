#!/bin/sh installstartScript.sh


sleep 3
#####################################
sleep 3
cd $HOME
	apt update && apt upgrade -y
	pkg install curl wget git micro openssl openssl ncurses-utils -y

# У кого есть root, выполняем:
	pkg install tsu

# Эмуляция рут прав
	pkg install fakeroot
	fakeroot

	uid=$(id -u)
	su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux


sleep 3
#################################
	echo Кастомизации Termux
	sh ./installstart/install-kastom.sh
#################################


sleep 3
#################################
	echo Установка instainsane в termux/nethunter (Брут Instagram)
	sh ./installstart/install-shellzsh.sh
#################################

sleep 3
#################################
	echo Установка DarkFly (tools 500+)
	sh ./installstart/install-DarkFly.sh
#################################


sleep 3
#################################
	echo "Установка metasploit в Termux"
	sh ./installstart/install-metasploit.sh
#################################


sleep 3
#################################
	echo "Установка Tmux-Bunch в termux (аналог apktool)"
	echo "Установка Tmux (менеджер терминалов, работа в нескольких окнах одновременно)"
	sh ./installstart/install-Tmux-Bunch.sh
#################################


sleep 3
#################################
	echo "Установка Tmux (менеджер терминалов, работа в нескольких окнах одновременно)"
	sh ./installstart/install-Tmux.sh
#################################

sleep 3
#################################
	echo "Всё для работы с Python Полный фарш на termux для Python:"
	sh ./installstart/install-Python.sh
#################################

sleep 3
#################################
echo "Установка Kali"
# sh ./installstart/install-kali.sh
#################################


sleep 3
#################################
echo "Java в termux"
	sh ./installstart/install-Java.sh
#################################


echo #### END ####
sleep 3
exit 0
#####################################