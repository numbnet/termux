#!/bin/bash

########    info     ########
##  Avtor: Zus Yurii
##  Data: 15-02-2020
##  Time: 21:47:16
##  %name% 
echo "=====     START     ===== ";

## Установка instainsane в termux/nethunter (брут Instagram):

## Установить в termux kali В termuxe
startkali
git clone https://github.com/thelinuxchoice/instainsane
cd instainsane
chmod +x instainsane.sh install.sh
./install.sh

## Теперь запускаем
./instainsane.sh

echo " ==  P.s. Брут работает только через WiFi, но есть способ обхода и теперь можно брутить с мобильного интернета, правда не всегда успешно коннектиться ";
echo "  ==  Ну а теперь  сам метод   ==  1) Скачиваем Orbot (tor для мобилы) ";
echo "  ==  2) Запускаем Orbot, снизу нажимаем шестеренку, выбираем termux, возвращаемся назад, нажимаем луковицу, ждём подключения и затем уже нажимаем VPN. ";
echo "  ==  3) Вот и все теперь весь трафик termuxa будет проходить через Tor. И можем брутить с мобильного интернета";

done

echo "=======    END.    =======";