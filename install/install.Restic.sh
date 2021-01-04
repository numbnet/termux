#!/bin/bash

chmod +x backup.sh

echo " == START export BSCRYPT  == ";
export BSCRYPT= ./backup.sh
echo " ==  END export BSCRYPT. ==  ";

dpkg -s $1 &> /dev/null;

echo " ==  START. == if -> else  == ";
if [ $? -eq 0 ]; then
    echo "# ====================== #"
    echo "#  Пакет уже установлен! #"
    echo "# ====================== #"
else
    echo "# = = = = = = = = = = = = = = = = = #";
    echo " ==  RESTIC. Будет начата Установка  == ";
    echo "# = = = = = = = = = = = = = = = = = #"
    echo "....";
    echo "....";
    echo "....";
    pkg install restic
fi

echo "  = = = = START BSCRYPT. = = = = =";
$BSCRYPT;
echo "  = = = =   END. BSCRYPT    = = = = =";

print  << "END";

exit