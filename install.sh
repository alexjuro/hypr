#/bin/sh

sudo pacman -Syu
sudo pacman -Sy hyprland hyprpaper wofi nautilus alacritty waybar code chromium nerd-fonts starship --noconfirm

cp -r ./config/* ~/.config
chmod +x ./update.sh
chmod +x ~/.config/waybar/updates.sh
chmod +x ~/.config/waybar/installUpdates.sh
chmod +x ~/.config/waybar/battery.sh
chmod +x ~/.config/waybar/volume.sh