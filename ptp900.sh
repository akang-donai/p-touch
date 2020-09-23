#!/bin/bash

## P-Touch for Ubuntu 16-18 LTS 64bit ##
## Doni Kuswaryadi - BICID ##

# Updating the system
sudo apt update && apt upgrade -y

# Preparing the setup
sudo apt install lib32z1 -y
cd Downloads/
wget https://download.brother.com/welcome/dlfp100274/ptp900lpr-1.0.0-0.i386.deb
wget https://download.brother.com/welcome/dlfp100276/ptp900cupswrapper-1.0.0-0.i386.deb
wget https://download.brother.com/welcome/dlfp100293/offfice_template.tar.gz.tar.gz
mv offfice_template.tar.gz.tar.gz office_template.tar.gz
gunzip office_template.tar.gz
mkdir /var/spool/lpd
sudo dpkg -i --force-all ptp900lpr-1.0.0-0.i386.deb
sudo dpkg -i --force-all ptp900cupswrapper-1.0.0-0.i386.deb
