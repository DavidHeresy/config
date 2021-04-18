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

The `home` alias works like the normal `git` command:

- `home ls-files`: Show files tracked in the repository.
- `home status`: Show the repository status.
- `home pull`: Pull changes from remote `origin`.
- `home push`: Push changes to remote `origin`.

## ToDo's

### [.config/nvim/init.vim](.config/nvim/init.vim)

- **[TODO](.config/nvim/init.vim#L63):** Checkout the CtrlP plugin.

### [.gitconfig](.gitconfig)

- **[TODO](.gitconfig#L4):** Extract alias functions into scripts.

### [git/README.md](git/README.md)

- **[TODO](git/README.md#L1):** Move scripts that are used git aliases from scripts to this directory.

### [git/todo](git/todo)

- **[IDEA](git/todo#L24):** Add support for `--ignore-issue` comments for lines to ignore.

Auf Branch main
Ihr Branch ist 1 Commit vor 'origin/main'.
  (benutzen Sie "git push", um lokale Commits zu publizieren)

Änderungen, die nicht zum Commit vorgemerkt sind:
  (benutzen Sie "git add <Datei>...", um die Änderungen zum Commit vorzumerken)
  (benutzen Sie "git restore <Datei>...", um die Änderungen im Arbeitsverzeichnis zu verwerfen)
	geändert:       README.md
	geändert:       git/build
	geändert:       git/todo

keine Änderungen zum Commit vorgemerkt (benutzen Sie "git add" und/oder "git commit -a")
