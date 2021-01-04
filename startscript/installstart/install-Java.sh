#!/bin/sh
	
### Инструкция по установке Java в termux
sleep 3
cd $HOME
apt update && apt upgrade
apt install git
git clone https://github.com/Hax4us/java
mv java/openjdk/java /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/home/java/openjdk/bin/java



exit /b