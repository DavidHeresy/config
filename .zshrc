# Manage config files in a bare Git repository.
alias config="git --git-dir=$HOME/.config.git --work-tree=$HOME"

# Use exa to list resources.
alias l="exa"
alias la="exa -a"
alias ll="exa -l"
alias lla="exa -la"

# List resources at every directory change.
function chpwd() {
    clear
    emulate -L zsh
    l
}

# Use UTF-8 in tmux.
alias tmux="tmux -u"

# Navigate quickly.
alias e="exit"
alias c="clear && l"
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
alias cm="chmod"
alias cu="config update"

# Enjoy your prompt. 
eval "$(starship init zsh)"

# Take notes in one place.
export NOTES="$HOME/$(pass notes)"
alias an="append "$NOTES""
alias on="$EDITOR "$NOTES""

# Start working.
source "$HOME/.config/python/base/bin/activate"
l

