#!/bin/env bash

# Refresh pacman
sudo pacman -Syy

#[Fonts]
sudo pacman -S otf-fira-code --noconfirm

#[Theming]
mkdir ~/customization
cd ~/customization
git clone git@github.com:unix121/i3wm-themer.git
cd i3wm-themer
./install_arch.sh
cd src
python i3wm-themer.py --config config.yaml --load themes/000.json

#[ZSH]
sudo pacman -S zsh --noconfirm

#[oh-my-zsh]
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#[Shell plugins]
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#[Replace dotfiles from remote]
cd ~/development/dotfiles
git pull
cp zsh/.zshrc ~/
cp xresources/.Xresources ~/
cp i3/config ~/.config/i3/
xrdb ~/.Xresources
