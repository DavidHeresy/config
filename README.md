# Home Config

## Setup

In `$HOME`, create a bare `config.git` repository:

```bash
git init --bare config.git
```

In `$HOME/.zshrc` (or `.bashrc`), set the `config` alias:

```bash
alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"
```

Source the `.zshrc` to activate the new alias and
hide undtracked files in the status info:

```bash
config config status.showUntrackedFiles no
```

Add the `origin` remote to the repositrory:

```bash
config remote add origin <remote-uri>
```

## Usage

The `config` alias works like the normal `git` command:

```bash
# Show tracked files:
config ls-files

# Show status (no untracked files):
config status

# Add and commit file-changes:
config add <file>
config commit -m "Message."

# Pull and push origin:
config pull
config push
```

