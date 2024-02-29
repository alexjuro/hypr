#/bin/sh

sudo pacman -Syu
sudo pacman -S hyprland hyprpaper wofi nautilus alacritty waybar --noconfirm
sudo pacman -S code discord chromium --noconfirm

cp -r ./config/* ~/.config
