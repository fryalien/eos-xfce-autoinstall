#!/bin/bash

echo "##### SET SUDO 3 hrs #####"

./scripts/set-sudo-timeout.sh

######################################################################################

echo "##### SET PRESENTATION MODE ON #####"

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -s true

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/eos-xfce-install.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/vm/flatpak-apps.sh

flatpak override --user --filesystem=home

######################################################################################

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/vm/xfce4 ~/.config/
cp -rfv ./profiles/vm/Thunar ~/.config/
cp -rfv ./profiles/minis/gtk-3.0 ~/.config/

echo "##### LOAD minis PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/vm/vm-xfce-panel.tar.bz2
