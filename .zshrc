# Manage your resources.
alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"

# Hide no resources.
alias ls="ls -a"

# Navigate quickly.
alias d="cd"
alias ..="cd .."
alias ...="cd ../.."

# Assemble your toolbox.
export EDITOR="nvim"
export BROWSER="brave-browser"

# Take notes in one place.
export NOTES="$HOME/$(pass notes)"

# Define your own path.
export PATH="$HOME/scripts:$PATH"

# Create new resources.
alias n="touch"
alias nd="mkdir"

# Append to resources.
alias a="append"
alias an="append $NOTES"

# Open resources.
alias o="xdg-open"
alias on="$EDITOR $NOTES"

# Exit resources. 
alias e="clear"
alias et="exit"

# Enjoy your prompt. 
eval "$(starship init zsh)"

# Use Python in a venv.
source "$HOME/.config/python/base/bin/activate"

# Now start working.
ls

