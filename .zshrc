# Load and export environment variables.
set -a
. $HOME/setting.env
. $HOME/secret.env
set +a

# Check setting variables.
[[ -z "$EDITOR" ]]  && echo "Missing 'EDITOR' in 'setting.env' file!"
[[ -z "$BROWSER" ]] && echo "Missing 'BROWSER' in 'setting.env' file!"
[[ -z "$GITHUB" ]] && echo "Missing 'BROWSER' in 'setting.env' file!"

# Check secret variables.
[[ -z "$ROOM" ]]  && echo "Missing 'ROOM' in 'secret.env' file!"
[[ -z "$ORIGIN" ]]  && echo "Missing 'ORIGIN' in 'secret.env' file!"

# Load and export aliases.
source $HOME/.aliasrc
source $ROOM/.aliasrc

# Set root crontab file.
sudo crontab -u root $HOME/crontab

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

