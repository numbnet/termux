#!/bin/bash

##    Кастомизации Termux
## Приступаем к кастомизации нашего termux, все действия выполняем под обычным пользователем не под root
apt install zsh micro wget curl
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
git clone https://github.com/Bhai4You/Termux-Banner
cd Termux-Banner/zsh
chmod +x requirement.sh t-ban.sh
bash requirement.sh
bash t-ban.sh

##  После последнего действия необходимо прописать свой никнейм или же любое слово которое будет под самим изображением
## Затем прописывайте то что будет написанно с верху маленьким шрифтом.
chsh -s zsh

exit