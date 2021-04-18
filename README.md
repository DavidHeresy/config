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

## Issues

### [.config/nvim/init.vim](.config/nvim/init.vim)

- [ ] [`#L47`](.config/nvim/init.vim#L47) **`TODO`** Setup tmux-vim-navigator
- [ ] [`#L55`](.config/nvim/init.vim#L55) **`TODO`** What does 'set ruler' do?
- [ ] [`#L58`](.config/nvim/init.vim#L58) **`TODO`** Configure spell checking.
- [ ] [`#L59`](.config/nvim/init.vim#L59) **`TODO`** Add command 'NoTRW' to remove trailing whitespace.
- [ ] [`#L60`](.config/nvim/init.vim#L60) **`TODO`** Checkout the CtrlP plugin.

### [.config/shell/aliasrc](.config/shell/aliasrc)

- [ ] [`#L29`](.config/shell/aliasrc#L29) **`IDEA`** source scripts/update

### [README.md](README.md)

- [ ] [`#L37`](README.md#L37) **`TODO`** Add link to `git update` alias.
- [ ] [`#L41`](README.md#L41) **`TODO`** Add link to "Nordic-darker" theme.

### [SETUP.md](SETUP.md)

- [ ] [`#L37`](SETUP.md#L37) **`TODO`** Add link to `git update` alias.
- [ ] [`#L41`](SETUP.md#L41) **`TODO`** Add link to "Nordic-darker" theme.

### [crontab](crontab)

- [ ] [`#L17`](crontab#L17) **`IDEA`** Use backup important data, that is not tracked with Git.

### [scripts/issues](scripts/issues)

- [ ] [`#L18`](scripts/issues#L18) **`IDEA`** Add support for `--ignore-issue` comments for lines to ignore.

