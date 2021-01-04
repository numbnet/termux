
### Установка Tmux-Bunch в termux:
sleep 3
cd $HOME
apt install axel
axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz
tar -xf Tmux-Bunch-2.7.tar.gz
cd Tmux-Bunch
bash setup
### Теперь запускаем из любого каталога
tmuxbunch


### Установка Tmux:
sleep 3
cd $HOME
kg install tmux -y
tmux
