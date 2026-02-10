#!/bin/bash

echo "Add flathub repo"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

fi="flatpak install flathub -y"
aur="yay -S --noconfirm --needed"

$fi com.brave.Browser
$fi com.github.johnfactotum.Foliate
$fi com.github.tchx84.Flatseal
$fi com.obsproject.Studio
$fi com.rustdesk.RustDesk
$fi com.vivaldi.Vivaldi
$fi com.vscodium.codium
$fi io.freetubeapp.FreeTube
$fi io.github.ellie_commons.cherrypick
$fi io.github.flattool.Warehouse
$fi io.github.giantpinkrobots.varia
$fi io.github.shiftey.Desktop
$fi io.mpv.Mpv
$fi md.obsidian.Obsidian
$fi no.mifi.losslesscut
$fi org.dupot.easyflatpak
$fi org.flameshot.Flameshot
$fi org.geany.Geany
$fi org.gnome.Showtime
$fi org.gnome.meld
$fi org.keepassxc.KeePassXC
$fi org.localsend.localsend_app
$fi org.nickvision.tubeconverter
$fi org.onlyoffice.desktopeditors
$fi org.qbittorrent.qBittorrent
$fi org.tenacityaudio.Tenacity
$fi org.upscayl.Upscayl
$fi org.videolan.VLC

flatpak override --user --filesystem=~/BIGDATA

echo "AUR"
#$aur megasync-bin
#$aur freefilesync-bin
$aur paru
