#!/bin/bash

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/iMac27/xfce4 ~/.config/
cp -rfv ./profiles/iMac27/Thunar ~/.config/
cp -rfv ./profiles/iMac27/gtk-3.0 ~/.config/

echo "##### LOAD iMac27 PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/iMac27/imac27-xfce-panel.tar.bz2
