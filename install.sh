#/bin/sh

sudo pacman -Syu
sudo pacman -Sy hyprland hyprpaper wofi nautilus alacritty waybar code chromium nerd-fonts starship p7zip --noconfirm

cp -r ./config/* ~/.config
chmod +x ./update.sh
chmod +x ~/.config/waybar/updates.sh
chmod +x ~/.config/waybar/installUpdates.sh
chmod +x ~/.config/waybar/battery.sh
chmod +x ~/.config/waybar/volume.sh

sudo mkdir /usr/share/fonts/SFMonoFonts /usr/share/fonts/SFSymbols
sudo cp ./fonts/SFMonoFonts/* /usr/share/fonts/SFMonoFonts
sudo cp ./fonts/SFSymbols/* /usr/share/fonts/SFSymbols