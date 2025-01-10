function fish_greeting
    neofetch
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias yay='paru -S'
alias yays='paru -Ss'
alias yeet='paru -Rcs'
alias yalist='paru -Q'

alias gl='git log --oneline --graph --all --decorate'

alias :q='exit'
alias :q!='systemctl poweroff'
alias restart='systemctl reboot'

# temporary fix
alias intellij-fix='/opt/intellij-idea-ultimate-edition/bin/idea.sh'

fish_add_path /home/bitdragon/.spicetify

# colors
set -U fish_color_autosuggestion red
set -U fish_color_command	 cyan
set -U fish_color_comment        yellow
set -U fish_color_end            cyan
set -U fish_color_error          blue
set -U fish_color_escape         cyan
set -U fish_color_normal         blue
set -U fish_color_operator       blue
set -U fish_color_param          yellow
set -U fish_color_quote          blue
set -U fish_color_redirection    blue
set -U fish_color_selection      cyan

starship init fish | source
