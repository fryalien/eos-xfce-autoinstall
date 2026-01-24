#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### SET SUDO 3 hrs #####"

./scripts/set-sudo-timeout.sh

######################################################################################

echo "##### SET PRESENTATION MODE ON #####"

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -s true

######################################################################################

echo "##### STOP PERIODIC PING #####"

./scripts/stop-ping.sh

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/eos-xfce-install.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/minis/flatpak-apps.sh

flatpak override --user --filesystem=~/BIGDATA

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
