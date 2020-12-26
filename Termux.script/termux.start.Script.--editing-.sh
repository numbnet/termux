
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


 # 
Кастомизации Termux
Приступаем к кастомизации нашего termux, все действия выполняем под обычным пользователем не под root
Все шаги выполняем по порядку:

1)
apt install zsh micro wget curl


2)
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"


3)
git clone https://github.com/Bhai4You/Termux-Banner


4)
cd Termux-Banner/zsh


5)
chmod +x requirement.sh t-ban.sh


6)
bash requirement.sh


7)
bash t-ban.sh


После последнего действия необходимо прописать свой никнейм или же любое слово которое будет под самим изображением
Затем прописывайте то что будет написанно с верху маленьким шрифтом.

8)
chsh -s zsh

Открываем новую сессию, и наблюдаем новые изменения.

 # 

На этом внешняя кастомизация закончена.

Теперь начинаем прикручивать плюшки к shell zsh:

1)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


2)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


3) Идем на пасту то есть сюда https://pastebin.com/qjqJ8E5q
и копируем настройки

4) В termux вводим
cd $HOME && micro .zshrc


5) Удалем все настройки которые по дефолту, чтоб быстрей удалить, выполните команду в termux
"" > .zshrc

Или
echo "" > .zshrc

Таким образом мы разом очистим файл с конфигами.

6) Теперь вставьте скопированные настройки в .zshrc и нажмите ctrl + s и ctrl + q (Всё мы сохранили и вышли)

Теперь вам доступны такие команды как:
google текст поиска
Открывает браузер с вашим запросом в google

lcd path/to/dir
переходит в каталог и сразу показывает файлы == cd && ls

Чтоб поменять цвет
~/.termux/colors.sh

Чтоб поменять шрифт
~/.termux/fonts.sh


Ну вот и всё готово, теперь открываем новую сессию и пользуемся... Удачи!


 # 
Установка instainsane в termux/nethunter (Брут Instagram)
Установка instainsane в termux/nethunter (брут Instagram):

1) Установить в termux kali

2) В termuxe
startkali


3)
git clone https://github.com/thelinuxchoice/instainsane


4)
cd instainsane


5)
chmod +x instainsane.sh install.sh


6)
./install.sh


7) Теперь запускаем
./instainsane.sh


P.s. Брут работает только через WiFi, но есть способ обхода и теперь можно брутить с мобильного интернета, правда не всегда успешно коннектиться.

Ну а теперь сам метод:
1) Скачиваем Orbot (tor для мобилы)

2) Запускаем Orbot, снизу нажимаем шестеренку, выбираем termux, возвращаемся назад, нажимаем луковицу, ждём подключения и затем уже нажимаем VPN.

3) Вот и все теперь весь трафик termuxa будет проходить через Tor. И можем брутить с мобильного интернета.


 # 
Установка DarkFly (tools 500+)
Установка DarkFly в termux (tools 500+)
Множество разных инструментов:

1)
pkg install python2


2)
pkg install git


3)
pkg install php


4)
git clone https://github.com/Ranginang67/DarkFly-Tool


5)
cd DarkFly-Tool


6)
chmod +x install.py


7)
python2 install.py


8) Меню установщика запускаем командой
DarkFly



 # 
Установка metasploit в Termux
Установка metasploit в termux:

pkg install unstable-repo && pkg install metasploit



 # 
Установка Tmux-Bunch в termux (аналог apktool)
Установка Tmux-Bunch в termux:

1)
cd $HOME


2)
apt install axel


3)
axel https://github.com/Hax4us/Tmux-Bunch/releases/download/v2.7/Tmux-Bunch-2.7.tar.gz


4)
tar -xf Tmux-Bunch-2.7.tar.gz


5)
cd Tmux-Bunch


6)
bash setup


7) Теперь запускаем из любого каталога
tmuxbunch


P.s. Во время установки могут появляться не значительные ошибки, просто не обращаем внимание на них.


 # 
Установка Tmux (менеджер терминалов, работа в нескольких окнах одновременно)
Установка Tmux:

1)
pkg install tmux -y


2)
tmux


P.s: шпора по tmux:
https://habr.com/post/126996/


 # 
Всё для работы с Python
Полный фарш на termux для Python:

pkg install micro python python2
pip install bpython ipython


micro test.py

И начинаем кодить.


Предупреждение!
Установка долгая!
 # 
Установка Kali
 # 
Для тех, у кого активировано su в Termux
1)
curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter


2)
tsudo chmod +x kalinethunter


3)
tsudo ./kalinethunter --insecure


4) запускаем Kali:
tsudo startkali


5)
wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb


6)
apt install ./kali-archive-keyring_2018.1_all.deb


7)
apt-get update


8)
apt-get install lxde-core lxde kali-defaults kali-root-login desktop-base


Девятая команда удаляет старые пакеты, десятая команда чистит кэш:
9)
apt-get autoremove


10)
apt-get clean


11)
apt-get install tightvncserver


12) После этих команд выполните:
vncserver :1 -geometry 700x1400 -dpi 120

Только замените на своё разрешение экрана.

13) потом введите пароль любой, нажмите enter и повтори пароль, потом нажми - Y/N
Спрашивает нужен ли пароль для режима "просмотр"
Y или N, решать Вам!

Зы:
Если ввели не верные значения, то:
vncserver -kill :1

И снова введите, но уже с изменёнными значениями
vncserver :1 -geometry 720x1420 -dpi 120


14) Включаем VNC:
У меня установлена программа bVNC и выглядят настройки так
 # 


Выхлоп:
 # 


15) На всякий...

Вход из под Termux:
tsudo startkali

Запуск:
vncserver :1 -geometry YYYxQQQ -dpi NNN

(Где YYY, QQQ, NNN - Ваши значения)

Выключение:
vncserver -kill :1

Выход в Termux:
logout



 # 
Для тех, у кого есть root права, но они не активированы в Termux
1)
pkg install tsu


2)
tsudo

И выполняем все перечисленные действия из спойлера - выше.


 # 
Скрины



 # 
Java в termux
Инструкция по установке Java в termux

apt update && apt upgrade


apt install git


git clone https://github.com/Hax4us/java


mv java/openjdk/java /data/data/com.termux/files/usr/bin


chmod +x /data/data/com.termux/files/home/java/openjdk/bin/java


На Андроиде 9 могут быть проблемы (пробуйте)