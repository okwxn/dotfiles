#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew is not installed."
    echo "Install Homebrew first:"
    echo "https://brew.sh"
    exit 1
fi

echo "==> Installing Homebrew packages"
brew bundle --no-upgrade --file="$DOTFILES/Brewfile"

link() {
    local src="$1"
    local dst="$2"

    mkdir -p "$(dirname "$dst")"

    if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
        return
    fi

    if [ -e "$dst" ] || [ -L "$dst" ]; then
        mv "$dst" "$dst.backup.$(date +%Y%m%d-%H%M%S)"
    fi

    ln -s "$src" "$dst"
}

echo "==> Linking configuration"

link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
link "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"
link "$DOTFILES/starship/starship.toml" "$HOME/.config/starship.toml"
link "$DOTFILES/mise/config.toml" "$HOME/.config/mise/config.toml"

echo "==> Done"
echo "Run: exec zsh"