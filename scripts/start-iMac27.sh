#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./profiles/iMac27/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./profiles/iMac27/flatpak-config.sh

######################################################################################

echo "##### XFCE STUFF #####"

./scripts/xfce-no-lock.sh

./scripts/eos-xfce-apps.sh

./profiles/iMac27/xfce-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
