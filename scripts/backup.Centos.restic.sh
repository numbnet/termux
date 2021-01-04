#!/bin/sh

#==== RESTIC with CENTOS & RHATT ====#

##==================≠==================
yum install yum-plugin-copr -y
yum copr enable copart/restic -y
yum install restic -y

##==================≠==================
##    or ADD NEW REPO
##==================≠==================
yum-config-manager --add-repo https://copr.fedorainfracloud.org/coprs/copart/restic/repo/epel-7/copart-restic-epel-7.repo

##==================≠==================
restic version
restic self-update

##==================≠==================
# restic generate --bash-completion /etc/bash_completion.d/restic
# writing bash completion file to /etc/bash_completion.d/restic

