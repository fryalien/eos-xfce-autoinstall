#!/bin/bash

echo "##### COPY XFCE CONFIG #####"

cp -rfv ./profiles/imac24/xfce4 ~/.config/
cp -rfv ./profiles/imac24/Thunar ~/.config/
cp -rfv ./profiles/imac24/gtk-3.0 ~/.config/

echo "##### LOAD imac24 PANEL CONFIG #####"

xfce4-panel-profiles load ./profiles/imac24/imac24-xfce-panel.tar.bz2
