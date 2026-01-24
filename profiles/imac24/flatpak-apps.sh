#!/bin/bash

# Add flathub repo.
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

fi="flatpak install flathub -y"

$fi com.brave.Browser
$fi com.github.tchx84.Flatseal
$fi io.mpv.Mpv
$fi org.localsend.localsend_app
$fi org.onlyoffice.desktopeditors
$fi org.qbittorrent.qBittorrent
$fi org.videolan.VLC

yay -S --noconfirm --needed freefilesync-bin
