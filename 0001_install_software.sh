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
# Bittorrent
sudo pacman -S qbittorrent --noconfirm
# Easy untar
yay -s dtrx --noconfirm
# Catfish search tool
sudo pacman -S catfish --noconfirm
# Terminology terminal with panes
sudo pacman -S terminology --noconfirm
