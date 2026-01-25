#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/eos-xfce-install.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/iMac27/flatpak-apps.sh

flatpak override --user --filesystem=~/BIGDATA

echo "##### COPY FLATPAK CONFIG #####"

sh ./profiles/iMac27/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/iMac27/xfce4 ~/.config/
cp -rfv ./profiles/iMac27/Thunar ~/.config/

echo "##### LOAD iMac27 PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/iMac27/imac27-xfce-panel.tar.bz2

######################################################################################

echo "##### SCRIPT ENDED #####"

date
