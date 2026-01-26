#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/iMac27/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

sh ./profiles/iMac27/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

sh ./profiles/iMac27/xfce-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
