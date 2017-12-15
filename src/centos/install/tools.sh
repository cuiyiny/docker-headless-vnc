#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
yum -y install epel-release 
yum -y update
yum -y install openssh-clients vim sudo wget which net-tools bzip2 \
    numpy #used for websockify/novnc
yum clean all