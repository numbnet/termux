pkg install root-repometasploit.shpkg install unstable-repometasploit.sh#!/bin/sh

#############################
##  Avtor: Zus Yurii
##  Data: 16-02-2020
##  time: 07:20:56
########### info ###############

## install repo stable

pkg install root-repo
pkg install x11-repo
pkg install unstable-repo

curl -LO https://its-pointless.github.io/setup-pointless-repo.sh
bash setup-pointless-repo.sh

##########

pkg install nodejs
pkg install perl
pkg install python


exit