#!/bin/env bash

# Refresh pacman
sudo pacman -Syy

# Install yay package manger
sudo pacman -S yay --noconfirm

#[Development]
#Ruby
sudo pacman -S ruby --noconfirm
#rbenv ruby version manager
yay -S rbenv ruby-build --noconfirm
rbenv install 2.6.5
rbenv global 2.6.5
#Bundler
gem install bundler -v 1.17.1

#Elixir
sudo pacman -S elixir --noconfirm 

#[Vagrant]
sudo pacman -S vagrant --noconfirm
#LXC Plugin
vagrant plugin install vagrant-lxc
#Install and configure bridge
sudo pacman -Syu dnsmasq net-tools bridge-utils
echo "USE_LXC_BRIDGE=true" | sudo tee -a /etc/default/lxc-net
echo "lxc.net.0.type = veth\nlxc.net.0.link = lxcbr0\nlxc.net.0.flags = up\nlxc.net.0.hwaddr = 00:16:3e:xx:xx:xx" | sudo tee -a /etc/lxc/default.conf
#Start and enable lxc-net service
sudo systemctl start lxc-net
sudo systemctl enable lxc-net.service

#[LXC]
sudo pacman -S lxc arch-install-scripts --noconfirm

#[Ansible]
sudo pacman -S ansible --noconfirm

#[Postgresql]
sudo pacman -S postgresql --noconfirm
#Create new db cluster
sudo -u postgres -i initdb --locale $LANG -E UTF8 -D /var/lib/postgres/data
#Start and enable postgres service
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
#Bluetooth manager
yay -S blueman --noconfirm
# Neovim
sudo pacman -S neovim --noconfirm

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

#[Useful packages, CLIs]
# Easy untar
yay -s dtrx --noconfirm
# Catfish search tool
sudo pacman -S catfish --noconfirm

#[Configure GIT]
git config --global user.name "Sahil Gadimbayli"
git config --global user.email "sahil.gadimbay@gmail.com"
