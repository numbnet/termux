#!/bin/bash

#Кастомизации Termux
#Приступаем к кастомизации нашего termux, все действия выполняем под обычным пользователем не под root
#Все шаги выполняем по порядку:

apt install zsh micro wget curl

sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"

git clone https://github.com/Bhai4You/Termux-Banner

cd Termux-Banner/zsh

chmod +x requirement.sh t-ban.sh

bash requirement.sh

bash t-ban.sh

#После последнего действия необходимо прописать свой никнейм или же любое слово которое будет под самим изображением
#Затем прописывайте то что будет написанно с верху маленьким шрифтом.

chsh -s zsh
#Открываем новую сессию, и наблюдаем новые изменения.

############  2  ##############

## прикручивать плюшки к shell zsh:

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

##  3) Идем на пасту то есть сюда https://pastebin.com/qjqJ8E5q
##  и копируем настройки
cd $HOMEУстановка Tmux (менеджер терминалов, работа в нескольких окнах одновременно)
Установка Tmux:

1) 
Код
pkg install tmux -y

2) 
Код
tmux
wget https://pastebin.com/raw/qjqJ8E5q
##  cd $HOME && micro .zshrc
cp .zshrc .zshrc.bac
echo "" > .zshrc

##  ZSHRC=cat $HOME/qjqJ8E5q
echo "$HOME/qjqJ8E5q" >> .zshrc

##  изменен цвета
~/.termux/colors.sh

##  Чтоб поменять шрифт
~/.termux/fonts.sh

exit