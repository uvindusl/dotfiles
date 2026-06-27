#!/usr/bin/env bash
set -e

DOTFILES="$HOME/Documents/dotfiles"

echo "Creating symlinks..."

# Zsh
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

# Kitty
ln -sf "$DOTFILES/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

# Tmux
ln -sfn "$DOTFILES/tmux" "$HOME/.config/tmux"

# Neovim
ln -sfn "$DOTFILES/nvim" "$HOME/.config/nvim"

# Atuin
ln -sf "$DOTFILES/atuin/config.toml" "$HOME/.config/atuin/config.toml"

# Scripts
ln -sfn "$DOTFILES/scripts" "$HOME/.local/bin"

echo "Done! Reload your shell."
