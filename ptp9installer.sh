#!/usr/bin/env bash

#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#  Welcome to the un-official Brother P-Touch Desktop Installer #"
echo "############################################################"

echo -e "\nChecking that minimal requirements are ok"

# Ensure the OS is compatible with the launcher
if [ -f /etc/centos-release ]; then
    OS="CentOs"
    VERFULL=$(sed 's/^.*release //;s/ (Fin.*$//' /etc/centos-release)
    VER=${VERFULL:0:1} # return 7 or 8
elif [ -f /etc/lsb-release ]; then
    OS=$(grep DISTRIB_ID /etc/lsb-release | sed 's/^.*=//')
    VER=$(grep DISTRIB_RELEASE /etc/lsb-release | sed 's/^.*=//')
elif [ -f /etc/os-release ]; then
    OS=$(grep -w ID /etc/os-release | sed 's/^.*=//')
    VER=$(grep VERSION_ID /etc/os-release | sed 's/^.*"\(.*\)"/\1/')
 else
    OS=$(uname -s)
    VER=$(uname -r)
fi
ARCH=$(uname -m)

echo "Detected : $OS  $VER  $ARCH"

if [[ "$OS" = "CentOs" && ("$VER" = "7" || "$VER" = "8" ) || 
      "$OS" = "Ubuntu" && ("$VER" = "16.04" || "$VER" = "18.04" ) || 
      "$OS" = "debian" && ("$VER" = "9" || "$VER" = "10" ) ]] ; then
    echo "Ok."
else
    echo "Sorry, this OS is not supported." 
    exit 1
fi

lsusb | grep -e "PT-P9$0"
if [ $? -ne 0 ]; then
        wget https://raw.githubusercontent.com/akang-donai/p-touch/master/ptp900.sh\n"
else
        wget https://raw.githubusercontent.com/akang-donai/p-touch/master/ptp950.sh\n"
fi
