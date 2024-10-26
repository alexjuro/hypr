#/bin/sh

cp -r ./config/* ~/.config
killall waybar
waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css