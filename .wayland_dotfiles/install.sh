#!/bin/bash

sed -i "s|/home/manuel|$HOME|g" .config/hypr/hyprland.conf

sudo pacman -Sy base-devel

mkdir ./tmp_installer/
cd tmp_installer/ || exit
mkdir -p "$HOME/.config/hypr/"
mkdir -p "$HOME/.config/dunst/"
mkdir -p "$HOME/.config/waybar/"
mkdir -p "$HOME/.config/wofi/"

# hyprland-git
git clone https://aur.archlinux.org/hyprland-git.git
cd hyprland-git/
makepkg -si
cd ..
cp ../.config/hypr/* "$HOME/.config/hypr/"

# waybar-git
git clone https://aur.archlinux.org/waybar-hyprland-git
cd waybar-hyprland-git/
makepkg -si
cd ..
cp ../.config/waybar/* "$HOME/.config/waybar/"

# dunst-git
git clone https://aur.archlinux.org/dunst-git.git
cd dunst-git/
makepkg -si
cd ..
cp ../.config/dunst/* "$HOME/.config/dunst/"


# wofi-hg
git clone https://aur.archlinux.org/wofi-hg.git
cd wofi-hg/
makepkg -si
cd ..
cp ../.config/wofi/* "$HOME/.config/wofi/"

# pamixer-git
git clone https://aur.archlinux.org/pamixer-git.git
cd pamixer-git/
makepkg -si
cd ..

# brightnessctl
git clone https://aur.archlinux.org/brightnessctl-git.git
cd brightnessctl-git/
makepkg -si
cd ..

# swaybg-git
git clone https://aur.archlinux.org/swaybg-git.git
cd swaybg-git/
makepkg -si
cd ..

# nautilus
git clone https://aur.archlinux.org/nautilus-git.git 
cd nautilus-git/
makepkg -si
cd ..

# swaylock-effects
git clone https://aur.archlinux.org/swaylock-effects.git
cd swaylock-effects/
makepkg -si
cd ..

# swayidle
git clone https://aur.archlinux.org/swayidle-git.git
cd swayidle-git/
makepkg -si
cd ..

# imv
git clone https://aur.archlinux.org/imv-git.git
cd imv-git/
makepkg -si
cd ..

# wlrobs-hg
git clone https://aur.archlinux.org/wlrobs-hg.git
cd wlrobs-hg/
makepkg -si
cd ..

#Blueman
git clone https://aur.archlinux.org/blueman-git.git
cd blueman-git/
makepkg -si
cd ..

###############################################################

# Remove files
cd .. && rm -rf ./tmp_installer/

sudo cp ./.config/hyprland.desktop /usr/share/wayland-sessions/
sudo cp ./.local/bin/hypr "$HOME/.local/bin/"

# Wallpapers
mkdir -p "$HOME/Immagini/Sfondi/"
cp ./Immagini/Sfondi/* "$HOME/Immagini/Sfondi/"



echo -e "\n\n\n"
echo "*************"
echo "** SUCCESS **"
echo "*************"
