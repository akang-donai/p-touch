#!/bin/bash

## P-Touch for Ubuntu 16-18 LTS 64bit ##
## Doni Kuswaryadi - BICID ##

# Updating the system
sudo apt update && apt upgrade -y

# Preparing the setup
sudo apt install lib32z1 -y
cd Downloads/
wget https://download.brother.com/welcome/dlfp002210/td2020lpr-1.0.1-0.i386.deb
wget https://download.brother.com/welcome/dlfp002213/td2020cupswrapper-1.0.1-0.i386.deb
mkdir /var/spool/lpd
sudo dpkg -i --force-all td2020lpr-1.0.1-0.i386.deb
sudo dpkg -i --force-all td2020cupswrapper-1.0.1-0.i386.deb

# Creating label size
brpapertoollpr_td2020 -P TD-2020 -n RSMENTARI -w 50 -h 60 -g 3.0 -b 3 -t 3 -r 1.5 -l 1.5 -S 1 -m 0.0 -o 0.0
