#!/bin/bash

## P-Touch for Ubuntu 16-18 LTS 64bit ##
## Doni Kuswaryadi - BICID ##

# Updating the system
sudo apt update && apt upgrade -y

# Preparing the setup
sudo apt install lib32z1 -y
cd Downloads/
wget https://download.brother.com/welcome/dlfp002222/td2130nlpr-1.0.1-0.i386.deb
wget https://download.brother.com/welcome/dlfp100008/td2130ncupswrapper-1.0.1-0.i386.deb
mkdir /var/spool/lpd
sudo dpkg -i --force-all td2130nlpr-1.0.1-0.i386.deb
sudo dpkg -i --force-all td2130ncupswrapper-1.0.1-0.i386.deb
