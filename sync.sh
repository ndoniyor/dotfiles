#!/bin/bash

DOTFILES="$HOME/code/dotfiles"

link() {
    local src="$DOTFILES/$1"
    local dst="$HOME/$1"
    mkdir -p "$(dirname "$dst")"
    ln -sfn "$src" "$dst"
    echo "linked $1"
}

link .zshrc
link .config/nvim
link .config/alacritty
link .config/hypr
link .config/waybar
link .config/rofi
link .config/gtk-3.0
link .config/gtk-4.0
link .config/mako
