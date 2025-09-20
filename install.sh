#!/bin/bash

sudo pacman -S unzip --noconfirm

mkdir -p ~/.local/share/waybar/styles/
mkdir -p ~/.local/share/waybar/layouts/
mkdir -p ~/.config/hypr/
mkdir -p ~/.config/hyde/themes/
mkdir -p ~/.config/fastfetch

cp -v files/waybar/graphite.css ~/.local/share/waybar/styles/
cp -v files/waybar/graphite.jsonc ~/.local/share/waybar/layouts/

cp -v files/hypr/hyprlock.conf ~/.config/hypr/
cp -v files/hypr/keyboard.conf ~/.config/hypr/
cp -v files/hypr/hyprland.conf ~/.config/hypr/
cp -v files/hypr/keybindings.conf ~/.config/hypr/
cp -v files/hypr/config.jsonc ~/.config/fastfetch

unzip -o files/hyde/Nightfox-Dark-Carbonfox.zip -d ~/.themes/
unzip -o files/hyde/Graphite_Eto.zip -d ~/.config/hyde/themes/
cp -v files/hyde/hyde.conf ~/.local/share/hyde/

echo "Successfully!"
