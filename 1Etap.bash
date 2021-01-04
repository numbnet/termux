#!/bin/bash

####   1Etap.sh    ####
# https://gist.githubusercontent.com/numbnet/16283d639aa316c8a1925c779dbd225c/raw/e44a093421e9988ffcfee7c43b2da95b5be98b57/1Etap.sh

menu()
{
while true; do
read -e -p "Restart your server now to complete the install (y/n)? " rsn
	case $rsn in
		[Yy]* ) break;;
		[Nn]* ) exit;
	esac
done
}

kastom()
{
	##=============================================##
	##============Кастомизации Termux==============##
	##=============================================##

	##=============================================
	# Variable
	DATA="$(date +%Y%m%d_%H%M%S)"
	TMPDIR=$PREFIX/tmp
	XDG_TMP_HOME=$HOME/.tmp
	XDG_CACHE_HOME=$HOME/.cache
	RESTIC_CACHE_DIR=$PREFIX/var/cache
	TERM_STORAGE=$HOME/storage/shared
		export XDG_TMP_HOME=$HOME/.tmp
		export TMPDIR=$PREFIX/tmp
		export XDG_CACHE_HOME=$HOME/.cache
		export RESTIC_CACHE_DIR=$PREFIX/var/cache
		export TERM_STORAGE=$HOME/storage/shared
	echo 'export XDG_TMP_HOME=$HOME/.tmp' >> ~/.bashrc
	echo 'export TMPDIR=$PREFIX/tmp' >> ~/.bashrc
	echo 'export XDG_CACHE_HOME=$HOME/.cache' >> ~/.bashrc
	echo 'export RESTIC_CACHE_DIR=$PREFIX/var/cache' >> ~/.bashrc
	echo 'export TERM_STORAGE=$HOME/storage/shared' >> ~/.bashrc
	##=============================================
	WGET=`which wget 2> /dev/null`
	ZSH=`which zsh 2> /dev/null`
	MICRO=`which micro 2> /dev/null`
	NANO=`which nano 2> /dev/null`
	CURL=`which curl 2> /dev/null`
	if test "-$WGET-" = "--" || test "-$ZSH-" = "--" || test "-$MICRO-" = "--" || test "-$NANO-" = "--" || test "-$CURL-" = "--"
	then
	  echo "You must install wget apt install wget zsh micro curl nano.";
	  pkg install zsh micro wget curl;
	fi
	##=============================================
	sh -c "$(curl -fsSL https://github.com/numbnet/termux-ohmyzsh/raw/master/install.sh)"
	git clone https://github.com/numbnet/Termux-Banner.git
	cd Termux-Banner/zsh
	chmod +x requirement.sh requirement.sh t-ban.sh
	bash requirement.sh
	bash t-ban.sh

	# Открываем новую сессию, и наблюдаем новые изменения. внешняя кастомизация закончена
	chsh -s zsh
	##=============================================
	## Install ZSH
	echo "Плюшки к shell zsh:"
	sleep 5
	git clone https://github.com/numbnet/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/numbnet/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/numbnet/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
	##=============================================
	# create dir
		if [[ ! -e $XDG_TMP_HOME ]];
		then
			mkdir $XDG_TMP_HOME
			mkdir $XDG_CACHE_HOME
			elif [[ ! -d $XDG_TMP_HOME ]]; then
				echo "==== $XDG_TMP_HOME exists, but is not a dir ====" 1>&2
	fi
	##=============================================
	##
	if [[ ! -e $TERM_STORAGE ]];
		then
		termux-setup-storage | sleep 5;
			# mkdir
				elif [[ ! -d $TERM_STORAGE ]];
		then
			echo "$TERM_STORAGE существует, это не каталог" 1>&2
			rm -rf "$TERM_STORAGE" | mkdir "$TERM_STORAGE"

	fi
	##=============================================
	## Settings ZHRC
	cd $XDG_CACHE_HOME
	cat ".zshrc" > .zshrc."$DATA".bac
	rm -rf .zshrc.sh
	wget https://gist.githubusercontent.com/numbnet/16283d639aa316c8a1925c779dbd225c/raw/a88c5a72761d37089bd6d7d39ea32fe0f0ba4238/.zshrc.sh
	cat $XDG_CACHE_HOME/.zshrc.sh > ~/.zshrc
	rm -rf $XDG_CACHE_HOME/.zshrc.sh
	exit 1
	##=============================================
	## ======= INFPORMATION  ==========
	## Теперь вам доступны такие команды как:  google текст поиска. Открывает браузер с вашим запросом в google: lcd path/to/dir ;
	## переходит в каталог и сразу показывает файлы == cd && ls;
	## Чтоб поменять цвет: ~/.termux/colors.sh Чтоб поменять шрифт: ~/.termux/fonts.sh
	##
	##=============================================
}


