# David Härer

*This is my `/home/david` directory.*

## Setup

1. In `$HOME`, create a bare `config.git` repository:  
   `git init --bare config.git`
2. In `$HOME/.zshrc` (or `.bashrc`), set the `config` alias:
   `alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"`
3. Source the `.zshrc` to activate the new alias and hide undtracked files in the status info:
   `config config status.showUntrackedFiles no`
4. Add the `origin` remote to the repositrory:
   `config remote add origin <remote-uri>`

## Usage

The `home` alias works like the normal `git` command:

- `home ls-files`: Show files tracked in the repository.
- `home status`: Show the repository status.
- `home pull`: Pull changes from remote `origin`.
- `home push`: Push changes to remote `origin`.

