#!/usr/bin/bash

# variables
config=~/.config/hypr
scripts=$config/scripts

# notification daemon
swaync &
# dunst &

# waybar
waybar &
brightnessctl set 50% &

# sometimes bluetooth and/or wifi get blocked, this unblocks them
rfkill unblock all &

# set the cursor
# hyprctl setcursor Bibata-Modern-Classic 24 &

# {% if on_laptop %}
# launch hyprpaper (wallpaper daemon thingy wtv)
# hyprpaper &

# {% if on_desktop %}
# launch wallpaper engine
$config/wallpapers.sh >> $config/log/wallpaper.log &
# {% end %}

# launch pipewire
~/.local/bin/start-pipewire

# {% if on_desktop %}
# rest of autostart
signal-desktop &
discord --start-minimized &
steam -silent &
sleep 3
spotify-tray --hide-window &
# {% end %}
