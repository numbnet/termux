#!/bin/sh installGameREPO.sh

git clone https://github.com/termux/game-packages
pkg install git -y
git clone https://github.com/khansaad1275/Termux-Games/
cd Termux-Games
chmod +x *
bash install.sh
###  exit  ###


