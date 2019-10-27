#!/bin/env bash

# Refresh pacman
sudo pacman -Syy

#[Ruby]
#Install
sudo pacman -S ruby --noconfirm
#Install rbenv ruby version manager
yay -S rbenv --noconfirm

#[Postgresql]
sudo pacman -S postgresql --noconfirm
#Create new db cluster
sudo -u postgres -i initdb --locale $LANG -E UTF8 -D /var/lib/postgres/data
#Enable postgres services
sudo systemctl start postgresql.service
sudo systemctl enable postgresql.service

#[Fonts]
sudo pacman -S otf-fira-code --noconfirm

#[Snap Store]
#Install snap store
yay -S snapd --noconfirm
#Enable snap service
sudo systemctl enable --now snapd.socket
#Create symlink for classic support
sudo ln -s /var/lib/snapd/snap /snap

#[3rd Party Software]
#Thunar file manager
sudo pacman -S thunar --noconfirm
#Neofetch system reporter
sudo pacman -S neofetch --noconfirm
#Firefox developer edition
sudo pacman -S firefox-developer-edition --noconfirm
#Chromium
sudo pacman -S chromium --noconfirm
# VS Code
sudo snap install code --classic
# Slack
yay -S slack-desktop --noconfirm
# Spotify
yay -S spotify --noconfirm
#Inkdrop Note Application
yay -S inkdrop --noconfirm

#[Theming]
mkdir ~/customization
cd ~/customization
git clone git@github.com:unix121/i3wm-themer.git
cd i3wm-themer
./install_arch.sh
cd src
python i3wm-themer.py --config config.yaml --load themes/000.json

#[oh-my-zsh]
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#[Shell plugins]
yay -S zsh-autosuggestions --noconfirm

#[Replace dotfiles from remote]
cd ~/development/dotfiles
git pull
cp zsh/.zshrc ~/.zshrc
cp xresources/.Xresources ~/.Xresources
cp i3/config ~/.config/i3/config
xrdb ~/.Xresources