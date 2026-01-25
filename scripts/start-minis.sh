#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/minis/flatpak-apps.sh

flatpak override --user --filesystem=~/BIGDATA

echo "##### COPY FLATPAK CONFIG #####"

sh ./profiles/minis/flatpak-config.sh

######################################################################################

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/minis/xfce4 ~/.config/
cp -rfv ./profiles/minis/Thunar ~/.config/
cp -rfv ./profiles/minis/gtk-3.0 ~/.config/

echo "##### LOAD minis PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/minis/minis-xfce-panel.tar.bz2

######################################################################################

echo "##### SCRIPT ENDED #####"

date
