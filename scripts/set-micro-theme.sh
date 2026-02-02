#!/bin/bash

echo "Create directories if they don't exist"
mkdir -pv ~/.config/micro/colorschemes

echo "Downloading Micro theme..."

curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/themes-micro/catppuccin-mocha.micro \
-o ~/.config/micro/colorschemes/catppuccin-mocha.micro

echo "Create settings.json "
echo '{ "colorscheme": "catppuccin-mocha" }' > ~/.config/micro/settings.json

echo "Done! Restart micro to see the theme."
