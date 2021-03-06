# Use vi mode.
bindkey -v

# Load and export setting variables.
set -a
. $HOME/.config/shell/setting.env
set +a

# Source various profiles.
source "$HOME/Privat/profile"
source "$HOME/.config/shell/aliasrc"
source "$APPS/todo-txt/todo.cfg"

# List files at every directory change.
function chpwd() {
    clear
    emulate -L zsh
    l
}

# Use the 'starship' prompt.
eval "$(starship init zsh)"

# List files to start working.
l

