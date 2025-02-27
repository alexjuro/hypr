#/bin/sh

sudo pacman -Syu
sudo pacman -Sy hyprland hyprpaper wofi nautilus alacritty waybar code chromium nerd-fonts starship p7zip jq neofetch pipewire pipewire-pulse pipewire-alsa wireplumber dolphin-emu nodejs npm intellij-idea-community-edition brightnessctl bluez bluez-utils --noconfirm

cp -r ./config/* ~/.config
chmod +x ./update.sh
chmod +x ~/.config/waybar/updates.sh
chmod +x ~/.config/waybar/installUpdates.sh
chmod +x ~/.config/waybar/battery.sh
chmod +x ~/.config/waybar/volume.sh
chmod +x ~/.config/waybar/weather.sh

sudo mkdir /usr/share/fonts/SFMonoFonts /usr/share/fonts/SFSymbols
sudo cp ./fonts/SFMonoFonts/* /usr/share/fonts/SFMonoFonts
sudo cp ./fonts/SFSymbols/* /usr/share/fonts/SFSymbols

sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

#sudo vim /etc/bluetooth/main.conf and set AutoEnable to true