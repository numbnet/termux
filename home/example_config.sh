#!/bin/sh

echo "===Creating config==="

    TBDIR=~/.termux/boot
    mkdir -p $TBDIR
    TB_CONF=$TBDIR/start-sshd
    touch $TB_CONF
cat > $TB_CONF <<-EOF
termux-wake-lock
sshd
EOF

exho 'Вывод conf файла"
    cat $TB_CONF

echo "#*****  -END-  *****#"

exit
