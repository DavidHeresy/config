# Home

<!-- vim-markdown-toc GitLab -->

* [Setup](#setup)
* [Usage](#usage)
* [Gnome Theme](#gnome-theme)
* [NeoVim Plugins](#neovim-plugins)
* [Todo](#todo)

<!-- vim-markdown-toc -->

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

## Gnome Theme

TODO: Add link to "Nordic-darker" theme.

## NeoVim Plugins

- camelcasemotion
- nerdtree
- rainbow
- syntastic
- vim-airline
- vim-airline-themes
- vim-colors-solarized
- vim-commentary
- vim-fugitive
- vim-markdown-toc
- vim-repeat
- vim-surround
- vim-tmux-navigator
- vim-toml
- youcompleteme

## Todo

- [ ] `.config/starship.toml`
- [ ] `.config/nvim/init.vim`

