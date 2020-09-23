#!/bin/bash

lsusb | grep -e "PT-P9$0")
if [ $? -ne 0 ]; then
        wget https://raw.githubusercontent.com/akang-donai/p-touch/master/ptp900.sh\n"
else
        wget https://raw.githubusercontent.com/akang-donai/p-touch/master/ptp950.sh\n"
fi
