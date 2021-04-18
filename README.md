# Home

This is my `$HOME` directory.

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

The `config` alias works like the normal `git` command:

- `config ls-files`: Show files tracked by the `config` repository.
- `config status`: Show the repository status (without untracked files).
- `config update`: Custom [alias](git-update) to `add` and `commit` a file.
- `config pull`: Pull changes from remote `origin`.
- `config push`: Push changes to remote `origin`.

[git-update]: TODO: Add link to `git update` alias.

## ToDo's

### [.config/nvim/init.vim](.config/nvim/init.vim)

- [ ] [**TODO**](.config/nvim/init.vim#L47): Setup tmux-vim-navigator
- [ ] [**TODO**](.config/nvim/init.vim#L55): What does 'set ruler' do?
- [ ] [**TODO**](.config/nvim/init.vim#L58): Configure spell checking.
- [ ] [**TODO**](.config/nvim/init.vim#L59): Add command 'NoTRW' to remove trailing whitespace.
- [ ] [**TODO**](.config/nvim/init.vim#L60): Checkout the CtrlP plugin.

### [.gitconfig](.gitconfig)

- [ ] [**TODO**](.gitconfig#L4): Extract alias functions into scripts.

### [README.md](README.md)

- [ ] [**TODO**](README.md#L26): Add link to `git update` alias.

### [USAGE.md](USAGE.md)

- [ ] [**TODO**](USAGE.md#L11): Add link to `git update` alias.

### [git/README.md](git/README.md)

- [ ] [**TODO**](git/README.md#L1): Move scripts that are used git aliases from scripts to this directory.

### [git/todo](git/todo)

- [ ] [**IDEA**](git/todo#L24): Add support for `--ignore-issue` comments for lines to ignore.

### [scripts/issues](scripts/issues)

- [ ] [**IDEA**](scripts/issues#L24): Add support for `--ignore-issue` comments for lines to ignore.

