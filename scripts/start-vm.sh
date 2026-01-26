#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/vm/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

sh ./profiles/vm/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

sh ./profiles/cm/xfce-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
