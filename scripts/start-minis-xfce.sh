#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

./scripts/eos-xfce-apps.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./profiles/minis/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./profiles/minis/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

./profiles/minis/xfce-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
