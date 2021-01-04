
### Теперь начинаем прикручивать плюшки к shell zsh:
#################################
sleep 3
cd $HOME
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
wget https://pastebin.com/raw/yJpsDYKM
cat yJpsDYKM > .zshrc

