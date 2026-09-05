# Dotfiles

## Setup

```bash
xcode-select --install
```

Install Homebrew, then:

```bash
git clone git@github.com:YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles

brew bundle --file=./Brewfile
./bootstrap.sh

exec zsh -l
```

## Tools

* Homebrew — system/CLI packages
* mise — Go, Node, Python, Rust
* direnv — project environments
* tmux — terminal sessions
* Neovim — terminal editor
* VS Code — primary editor
* Starship — shell prompt

## GitHub

```bash
gh auth login
gh auth status
```

## Updating

```bash
cd ~/dotfiles
git add .
git commit -m "Update dotfiles"
git push
```

## Structure

```text
zsh/       Shell
git/       Git
tmux/      tmux
starship/  Prompt
mise/      Runtimes
vscode/    Editor
```
