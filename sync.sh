#!/bin/bash

set -e
set -x

./sort_smartcard_list.py

cp smartcard_list.txt ~/public_html.free/softwares/pcsc-tools/smartcard_list.txt
#cp smartcard_list.txt ~/.cache/smartcard_list.txt
sitecopy -u ftpperso

scp ~/Documents/sc/costa/pcsc-tools/smartcard_list.txt vps:Serveurs_web/pcsc-tools.apdu.fr
