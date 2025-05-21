function fish_greeting
    neofetch
end

alias yay='paru -S'
alias yays='paru -Ss'
alias yeet='paru -Rcs'
alias yalist='paru -Q'

alias gl='git log --oneline --graph --all --decorate'

alias :q='exit'
alias :q!='systemctl poweroff'
alias restart='systemctl reboot'

alias start-tor='sh ~/.config/hypr/scripts/start-tor.sh'

fish_add_path /home/bitdragon/.spicetify

# {% if on_desktop %}

#<yolk> # colors
#<yolk> set -U fish_color_autosuggestion red
#<yolk> set -U fish_color_command	     cyan
#<yolk> set -U fish_color_comment        yellow
#<yolk> set -U fish_color_end            cyan
#<yolk> set -U fish_color_error          blue
#<yolk> set -U fish_color_escape         cyan
#<yolk> set -U fish_color_normal         blue
#<yolk> set -U fish_color_operator       blue
#<yolk> set -U fish_color_param          yellow
#<yolk> set -U fish_color_quote          blue
#<yolk> set -U fish_color_redirection    blue
#<yolk> set -U fish_color_selection      cyan

# {% end %}

starship init fish | source
