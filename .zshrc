# Load and export setting variables.
set -a
. $HOME/.config/shell/setting.env
set +a

# Check setting variables.
[[ -z "$EDITOR" ]]  && echo "Missing 'EDITOR' in 'setting.env' file!"
[[ -z "$BROWSER" ]] && echo "Missing 'BROWSER' in 'setting.env' file!"
[[ -z "$GITHUB" ]]  && echo "Missing 'GITHUB' in 'setting.env' file!"

# Source private profile.
source "$HOME/private/profile"

# Load and export aliases.
source $HOME/.config/shell/aliasrc

# List files at every directory change.
function chpwd() {
    clear
    emulate -L zsh
    l
}

# Add $HOME/scripts to '$PATH'.
export PATH="$HOME/scripts:$PATH"

# Use the 'starship' prompt.
eval "$(starship init zsh)"

# List files and start working.
l

