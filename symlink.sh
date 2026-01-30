#!/bin/bash

echo "Creating symbolic links for config files..."

# Get script location
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ensure .config exists
mkdir -p ~/.config

# Symlinks requiring sudo
sudo ln -sfn "$DOTFILES_DIR/keyd" /etc/keyd

# Regular symlinks
ln -sfn "$DOTFILES_DIR/MangoHud" ~/.config/MangoHud
ln -sfn "$DOTFILES_DIR/alacritty" ~/.config/alacritty
ln -sfn "$DOTFILES_DIR/fuzzel" ~/.config/fuzzel
ln -sfn "$DOTFILES_DIR/niri" ~/.config/niri
ln -sfn "$DOTFILES_DIR/waybar" ~/.config/waybar

echo "Symbolic links created"
