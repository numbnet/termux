Перед работай с termux выполняем команды:
apt update && apt upgrade -y
pkg install curl wget git micro openssl openssl-dev ncurses-utils -y

У кого есть root, выполняем:
pkg install tsu


	Эмуляция рут прав
pkg install fakeroot

fakeroot


Фикс исправления прав, если установили или обновились через tsu или tsudo
uid=$(id -u)

su -c chown -R $uid:$uid /data/data/com.termux/ && su -c restorecon -RF /data/data/com.termux