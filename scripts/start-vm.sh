#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/eos-xfce-install.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

sh ./profiles/vm/flatpak-apps.sh

flatpak override --user --filesystem=home

######################################################################################

echo "##### DISABLE LOCK AND IDLE #####"

xfconf-query -c xfce4-screensaver -p /lock/enabled -s false
xfconf-query -c xfce4-screensaver -p /saver/mode -s 0
xfconf-query -c xfce4-screensaver -p /saver/idle-activation/delay -s 0
xfconf-query -c xfce4-screensaver -p /lock/sleep-activation -s false

######################################################################################

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/vm/xfce4 ~/.config/
cp -rfv ./profiles/vm/Thunar ~/.config/
cp -rfv ./profiles/minis/gtk-3.0 ~/.config/

echo "##### LOAD minis PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/vm/vm-xfce-panel.tar.bz2

######################################################################################

echo "##### SCRIPT ENDED #####"

date
