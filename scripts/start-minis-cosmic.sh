#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./profiles/minis/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./profiles/minis/flatpak-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
