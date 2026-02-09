#!/bin/bash

echo "##### SCRIPT STARTED #####"

date

######################################################################################

echo "##### INSTALL EOS ALL #####"

./scripts/install-all.sh

######################################################################################

echo "##### SETUP PAM #####"

./scripts/cosmic-pam-setup.sh

######################################################################################

echo "##### INSTALL FLATPAK #####"

./profiles/minis/flatpak-apps.sh

echo "##### COPY FLATPAK CONFIG #####"

./profiles/minis/flatpak-config.sh

######################################################################################

echo "##### SCRIPT ENDED #####"

date
