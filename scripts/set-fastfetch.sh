#!/bin/bash

echo "INSTALL FF"
sudo pacman -S --noconfirm --needed fastfetch

echo "MAKE CONFIG DIR"
mkdir -v ~/.config/fastfetch

echo "COPY CONFIG"

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/fastfetch/config-simple.jsonc \
-o ./config/fastfetch/config.jsonc

cp ./config/fastfetch/config.jsonc ~/.config/fastfetch/
