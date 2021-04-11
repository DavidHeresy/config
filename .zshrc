# Manage your resources.
alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"

# Show my resources at every directory change.
function chpwd() {
    clear
    emulate -L zsh
    ls -a
}

# Hide no resources.
alias ls="ls -a"

# Navigate quickly.
alias e="exit"
alias c="clear && ls -a"
alias d="cd"
alias ..="cd .."
alias ...="cd ../.."

# Assemble your toolbox.
export EDITOR="nvim"
export BROWSER="brave-browser"

# Use your tools quickly.
alias v="$EDITOR"

# Define your own path.
export PATH="$HOME/scripts:$PATH"

# Work on resources quickly.
alias a="append"
alias o="xdg-open"
alias n="touch"
alias nd="mkdir"

# Enjoy your prompt. 
eval "$(starship init zsh)"

# Take notes in one place.
export NOTES="$HOME/$(pass notes)"
alias an="append "$NOTES""
alias on="$EDITOR "$NOTES""

# Start working.
source "$HOME/.config/python/base/bin/activate"
ls

