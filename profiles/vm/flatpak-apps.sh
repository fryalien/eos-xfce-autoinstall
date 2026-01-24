#!/bin/bash

# Add flathub repo.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

fi="flatpak install flathub -y"

$fi com.brave.Browser
$fi org.geany.Geany
$fi org.localsend.localsend_app
$fi org.flameshot.Flameshot

# Flatpak stuff.
$fi com.github.tchx84.Flatseal
$fi io.github.flattool.Warehouse
$fi org.dupot.easyflatpak
