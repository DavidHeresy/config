# Load and export setting variables.
set -a
. $HOME/.config/shell/setting.env
set +a

# Export paths to various directory.
export SCRIPTS="$HOME/Code/shell"
export GIT="$HOME/Code/git"
export PATH="$SCRIPTS:$PATH"

# Source private profile.
source "$HOME/Privat/profile"

# Load and export aliases.
source $HOME/.config/shell/aliasrc

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

