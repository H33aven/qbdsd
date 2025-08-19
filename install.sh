#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

handle_error() {
    echo -e "${RED}Error in line $1: ${2}${NC}" >&2
    exit 1
}

trap 'handle_error ${LINENO} "$BASH_COMMAND"' ERR

echo -e "${YELLOW}Loading...${NC}"

mkdir -p ~/.local/share/waybar/styles/
mkdir -p ~/.local/share/waybar/layouts/
mkdir -p ~/.config/hypr/
mkdir -p ~/.config/hyde/themes/

cp -v files/waybar/graphite.css ~/.local/share/waybar/styles/
cp -v files/waybar/graphite.jsonc ~/.local/share/waybar/layouts/

cp -v files/hypr/hyprlock.conf ~/.config/hypr/
cp -v files/hypr/keyboard.conf ~/.config/hypr/
cp -v files/hypr/hyprland.conf ~/.config/hypr/

unzip -o files/hyde/Graphite_Eto.zip -d ~/.config/hyde/themes/

echo -e "${GREEN}Successfully!${NC}"
