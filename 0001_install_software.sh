#!/bin/env bash

# Refresh pacman
sudo pacman -Syy

# Install yay package manger
sudo pacman -S yay --noconfirm

#[Snap Store]
#Install snap store
yay -S snapd --noconfirm
#Enable snap service
sudo systemctl enable --now snapd.socket
#Create symlink for classic support
sudo ln -s /var/lib/snapd/snap /snap

#[Online Signatures]
sudo pacman -S ccid --noconfirm
# sudo systemctl start pcscd.socket
# sudo systemctl enable pcscd.socket
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
# Okular PDF reader
sudo snap install okular
# Telegram desktop
sudo snap install telegram-desktop
# Mailspring
sudo snap install mailspring
#Speedtest-cli
sudo pacman -S speedtest-cli --noconfirm
#Bluetooth manager
yay -S blueman --noconfirm
# Neovim
sudo pacman -S neovim --noconfirm
# Bittorrent
sudo pacman -S qbittorrent --noconfirm
# Easy untar
yay -s dtrx --noconfirm
# Catfish search tool
sudo pacman -S catfish --noconfirm
# Hugo static site generator
sudo pacman -S hugo --noconfirm
# Clipboard tool
sudo pacman -S xsel --noconfirm
# Scrot screenshot utility
sudo pacman -S scrot --noconfirm
# Networking
sudo pacman -S nmap --noconfirm
# File manager 
sudo pacman -S mc --noconfirm
