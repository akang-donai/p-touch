#!/bin/bash

## P-Touch for Ubuntu 16.04 -18.04 LTS 64bit ##
## Doni Kuswaryadi - BICID ##

# Updating the system
sudo apt update && apt upgrade -y

# Preparing the setup
sudo apt install lib32z1 -y
cd Downloads/
wget https://download.brother.com/welcome/dlfp100285/ptp950lpr-1.0.0-0.i386.deb
wget https://download.brother.com/welcome/dlfp100287/ptp950cupswrapper-1.0.0-0.i386.deb
wget https://download.brother.com/welcome/dlfp100293/offfice_template.tar.gz.tar.gz
mv offfice_template.tar.gz.tar.gz office_template.tar.gz
gunzip office_template.tar.gz
mkdir /var/spool/lpd
sudo dpkg -i --force-all ptp950lpr-1.0.0-0.i386.deb
sudo dpkg -i --force-all ptp950cupswrapper-1.0.0-0.i386.deb
