#!/bin/env bash

# Refresh pacman
sudo pacman -Syy

# Fonts
sudo pacman -S otf-fira-code --noconfirm

#[ZSH]
sudo pacman -S zsh --noconfirm

#[oh-my-zsh]
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#[Shell plugins]
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo pacman -S zsh-autosuggestions --noconfirm

# Replace dotfiles
cp zsh/.zshrc ~/
cp .gitconfig ~/
cp .profile ~/
cp .tool-versions ~/
cp .xinitrc ~/
cp gitignore/.gitignore ~/
cp xresources/.Xresources ~/
cp i3/config ~/.config/i3/

xrdb ~/.Xresources
