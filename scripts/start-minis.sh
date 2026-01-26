#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/minis/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

sh ./profiles/minis/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

sh ./profiles/minis/xfce-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
