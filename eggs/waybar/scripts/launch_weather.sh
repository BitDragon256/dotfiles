#!/bin/sh

foot --title weather sh -c "curl 'https://wttr.in/Tuebingen+Germany' && read -p 'Press Enter to continue'" 
#hyprctl dispatch movetoworkspace empty
