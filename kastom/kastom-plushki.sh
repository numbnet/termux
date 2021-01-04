#!/bin/bash ~/kastom-plushki.sh

# Теперь начинаем прикручивать плюшки к shell zsh:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Идем на пасту то есть сюда https://pastebin.com/qjqJ8E5q и копируем настройки
cd $HOME && micro .zshrc
cp .zshrc .zshrc.bac
# Удалем все настройки которые по дефолту, чтоб быстрей удалить, выполните команду в termux 
"" > .zshrc
echo "" > .zshrc
##  Таким образом мы разом очистим файл с конфигами.
#  Теперь вставьте скопированные настройки в .zshrc и нажмите ctrl + s и ctrl + q (Всё мы сохранили и вышли)

echo "Теперь вам доступны такие команды как:
google текст поиска
Открывает браузер с вашим запросом в google"

lcd ~/
#переходит в каталог и сразу показывает файлы == cd && ls

##  Чтоб поменять цвет
~/.termux/colors.sh
## Чтоб поменять шрифт
~/.termux/fonts.sh
echo "END kastom-plushki.sh "
