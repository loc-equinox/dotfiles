#!/bin/bash

# Directory where the dotfiles repository is cloned
DOTFILES_REPO_DIR="$HOME/dotfiles"

# Clone the dotfiles repository if it doesn't exist
if [ ! -d "$DOTFILES_REPO_DIR" ]; then
    git clone git@github.com:loc-equinox/dotfiles.git "$DOTFILES_REPO_DIR"
fi

# List of dotfiles and directories to create symlinks for
declare -a DOTFILES=(
    ".bash_profile"
    ".tmux.conf"
    ".config/fish/config.fish"
    ".config/fish/functions"
)

for dotfile in "${DOTFILES[@]}"; do
    # Source path in the dotfiles repository
    src="$DOTFILES_REPO_DIR/$dotfile"
    # Destination path in the home directory
    dst="$HOME/$dotfile"

    # Create parent directories if they don't exist
    mkdir -p "$(dirname "$dst")"

    # Remove existing symlink or file
    if [ -L "$dst" ] || [ -f "$dst" ]; then
        rm "$dst"
    fi

    # Create a new symlink
    ln -s "$src" "$dst"
    echo "Created symlink for $dotfile"
done
