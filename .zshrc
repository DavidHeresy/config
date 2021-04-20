# Load and export setting variables.
set -a
. $HOME/.config/shell/setting.env
set +a

# Check setting variables.
[[ -z "$EDITOR" ]]  && echo "Missing 'EDITOR' in 'setting.env' file!"
[[ -z "$BROWSER" ]] && echo "Missing 'BROWSER' in 'setting.env' file!"
[[ -z "$GITHUB" ]]  && echo "Missing 'GITHUB' in 'setting.env' file!"

# Export path to (git) scripts directory.
export SCRIPTS="$HOME/scripts"
export GIT="$HOME/git"

# Source private profile.
source "$HOME/Privat/profile"

# Source todo.txt config file.
source $HOME/.config/todo-txt/todo.cfg
[[ -z "$TODO_DIR" ]]  && echo "Missing 'TODO_DIR' in 'todo.cfg' file!"
[[ -z "$TODO_FILE" ]]  && echo "Missing 'TODO_FILE' in 'todo.cfg' file!"
[[ -z "$DONE_FILE" ]]  && echo "Missing 'DONE_FILE' in 'todo.cfg' file!"
[[ -z "$REPORT_FILE" ]]  && echo "Missing 'REPORT_FILE' in 'todo.cfg' file!"

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

# Set root crontab file.
sudo crontab -u root $HOME/.config/cron/crontab

# Use the 'starship' prompt.
eval "$(starship init zsh)"

# List files and start working.
l

