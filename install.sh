#!/bin/bash

# install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# zsh-autosuggestions
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# zsh-syntax-highlighting
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# agnoster theme
if [ ! -f "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/agnoster.zsh-theme" ]; then
    curl -fsSL https://raw.githubusercontent.com/agnoster/agnoster-zsh-theme/master/agnoster.zsh-theme -o ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/agnoster.zsh-theme
fi

# JetBrains Mono Nerd Font
if ! fc-list | grep -qi "JetBrainsMono"; then
    mkdir -p $HOME/.local/share/fonts
    curl -fsSL "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip" -o /tmp/JetBrainsMono.zip
    unzip -o /tmp/JetBrainsMono.zip -d $HOME/.local/share/fonts/JetBrainsMono
    fc-cache -fv
    rm /tmp/JetBrainsMono.zip
fi

# zoxide
if ! command -v zoxide &>/dev/null; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
fi

# symlink dotfiles
ln -sf $HOME/code/dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/code/dotfiles/.config/nvim $HOME/.config/nvim
ln -sf $HOME/code/dotfiles/.config/alacritty $HOME/.config/alacritty
