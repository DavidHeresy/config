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

## Status

### [.config/nvim/init.vim](.config/nvim/init.vim)

- [ ] [`#L47`](.config/nvim/init.vim#L47) **`TODO`** Setup tmux-vim-navigator
- [ ] [`#L55`](.config/nvim/init.vim#L55) **`TODO`** What does 'set ruler' do?
- [ ] [`#L58`](.config/nvim/init.vim#L58) **`TODO`** Configure spell checking.
- [ ] [`#L59`](.config/nvim/init.vim#L59) **`TODO`** Add command 'NoTRW' to remove trailing whitespace.
- [ ] [`#L60`](.config/nvim/init.vim#L60) **`TODO`** Checkout the CtrlP plugin.

### [README.md](README.md)

- [ ] [`#L26`](README.md#L26) **`TODO`** Add link to `git update` alias.

### [USAGE.md](USAGE.md)

- [ ] [`#L11`](USAGE.md#L11) **`TODO`** Add link to `git update` alias.

### [scripts/issues](scripts/issues)

- [ ] [`#L24`](scripts/issues#L24) **`IDEA`** Add support for `--ignore-issue` comments for lines to ignore.

### [scripts/report](scripts/report)

- [ ] [`#L24`](scripts/report#L24) **`IDEA`** Add support for `--ignore-issue` comments for lines to ignore.

