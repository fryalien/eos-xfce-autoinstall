#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./profiles/vm/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./profiles/vm/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

./profiles/cm/xfce-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
