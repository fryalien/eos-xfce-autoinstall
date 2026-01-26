#!/bin/bash

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/vm/xfce4 ~/.config/
cp -rfv ./profiles/vm/Thunar ~/.config/
cp -rfv ./profiles/vm/gtk-3.0 ~/.config/

echo "##### LOAD vm PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/vm/vm-xfce-panel.tar.bz2
