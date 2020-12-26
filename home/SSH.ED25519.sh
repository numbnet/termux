#!/bin/bash

##==========SSH.ED25519.sh==========##

function variable {
##=======≠==========================
##	Parametru
	COMKEY="$MAILKEY";
	#$ COMKEY="$USER"
	#$ PASSKEY="";
	#$ TKEY=rsa;
	#$ TKEY=dsa;
	#$ TKEY=ecdsa;
	#$ TKEY=xmss;
	TKEY=ed25519;
	BKEY=2048;
	HOST=$(hostname -s);
	HOSTIP=$(hostname -i);
	#$ NAMEKEY="$NAME"_"$TKEY";
	DKEY=~/.ssh/"$NAMEKEY" ;

}



##=======================================
## ДАННЫЕ
##
echo "Имя ключа: "; read NAMEKEY;
echo "Введите E-Mail: "; read MAILKEY;
echo "Пароль к ключу: "; read PASSKEY;
#$ echo "ТиптШифрование :  "; reed TKEY;
#$ echo "Уровень шифрования: "; reed BKEY;

# func init
variable


###  -Проверка папки ~/.ssh ###
echo "## -Find folder: $HOME/.ssh ";
	if [ -d $HOME/.ssh ]; then
		echo "Directory already exists"
else
	echo "NO EXISTS. Create $HOME/.ssh "
	echo
	mkdir $HOME/.ssh

fi



##=======≠==========================
## Add ssh key
##
ssh-keygen -t "$TKEY" -b "$BKEY" -f "$HOME"/.ssh/"$NAMEKEY" -C "$COMKEY" -N "$PASSKEY"
##=============≠=================
## REG key
ssh-copy-id -i ~/.ssh/"$NAMEKEY".pub "$USER"@"$HOSTIP" ;
eval "$(ssh-agent -s)";
ssh-add ~/.ssh/"$NAMEKEY";
# ssh "$USER"@"$HOSTIP";

exit


##=======≠==========================
## ПРИМЕР СТРОЧКИ 
##
## ## ssh-keygen -t ed25519 -b 2048 -f "~/.ssh/id_ed25519" -C "mymail@site.com" -N "MYPASS"
## 