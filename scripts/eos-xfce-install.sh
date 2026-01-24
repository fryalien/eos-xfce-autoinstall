#!/bin/bash

user="y" # CHANGE THIS TO YOUR USER

######################################################################################

echo "##### SET SUDO 3 hrs #####"

./scripts/set-sudo-timeout.sh

######################################################################################

echo "##### SET PRESENTATION MODE ON #####"

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -s true

######################################################################################

echo "##### DISABLE LOCK AND IDLE #####"

xfconf-query -c xfce4-screensaver -p /idle-activation-enabled -s false

######################################################################################

echo "##### STOP PERIODIC PING #####"

./scripts/stop-ping.sh

######################################################################################

echo "##### INSTALL DISTRO APPS #####"

sh ./scripts/eos-apps.sh

######################################################################################

echo "##### SETUP FISH #####"

mkdir -v ~/.config/fish

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/fish/config.fish \
-o ~/.config/fish/config.fish

sudo usermod -s /usr/bin/fish $user

######################################################################################

echo "##### SETUP FASTFETCH #####"

mkdir -v ~/.config/fastfetch

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/refs/heads/main/fastfetch/config-simple.jsonc \
-o ~/.config/fastfetch/config.jsonc

######################################################################################

echo "##### SETUP MICRO EDITOR #####"

sh ./scripts/set-micro-theme.sh

######################################################################################

echo "##### SETUP FIREWALL #####"

sudo ufw disable
sudo cp -fv ./firewall/user.rules /etc/ufw/
sudo cp -fv ./firewall/user6.rules /etc/ufw/
sudo ufw enable

######################################################################################

echo "##### COPY WALLPAPERS #####"

cp -v Pictures/* ~/Pictures/
