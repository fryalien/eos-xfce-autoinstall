#!/bin/bash

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/minis/xfce4 ~/.config/
cp -rfv ./profiles/minis/Thunar ~/.config/
cp -rfv ./profiles/minis/gtk-3.0 ~/.config/

echo "##### LOAD minis PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/minis/minis-xfce-panel.tar.bz2
