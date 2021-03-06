#!/bin/bash

########### info ###############
##  Avtor: Zus Yurii
##  Data: 15-02-2020
##  time: 19:12:21
##  %name% 
echo "########  START. #########"

# ПРОВЕРКА СУЩЕСТВОВАНИЯ ФАЙЛА BASH
##  Начать стоит с простого и более общего метода. Параметр -e позволяет определить, существует ли указанный объект. Не имеет значения, является объект каталогом или файлом.
if [ -e $HOME ]
then
echo "Каталог $HOME существует. Проверим наличие файла"
# проверка существования файла
if [ -e $HOME/testing ]
then
# если файл существует, добавить в него данные
echo "Строка для существующего файла" >> $HOME/testing
echo "Файл существует. В него дописаны данные."
else
# иначе — создать файл и сделать в нем новую запись
echo "Файл не существует, поэтому создается."
echo "Создание нового файла" > $HOME/testing
fi
else
echo "Простите, но у вас нет Домашнего каталога"
fi

done
echo "#######  END ########"