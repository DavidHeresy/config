# Home

*My `/home/david`.*

## Setup

1. In `$HOME`, create a bare `config.git` repository:  
   `git init --bare config.git`
2. In `$HOME/.zshrc` (or `.bashrc`), set the `config` alias:
   `alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"`
3. Source the `.zshrc` to activate the new alias and hide undtracked files in the status info:
   `config config status.showUntrackedFiles no`
4. Add the `origin` remote to the repositrory:
   `config remote add origin <remote-uri>`

## TODO's

## IDEA's

### [.config/cron/crontab](.config/cron/crontab)

- [`#L17`](.config/cron/crontab#L17) Use backup important data, that is not tracked with Git.

### [.config/nvim/init.vim](.config/nvim/init.vim)

- [`#L71`](.config/nvim/init.vim#L71) Checkout the CtrlP plugin.

### [git/check](git/check)

- [`#L4`](git/check#L4) Add support for `--ignore-<LABEL>` comments for lines to ignore.

