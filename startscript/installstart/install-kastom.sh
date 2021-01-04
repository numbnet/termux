#!/bin/sh
	
# Приступаем к кастомизации нашего termux, все действия 
# выполняем под обычным пользователем не под root
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

exit /b