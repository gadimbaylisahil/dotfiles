#!/bin/env bash

# Refresh pacman
sudo pacman -Syu

# [Development]
# Ruby
sudo pacman -S ruby --noconfirm

# asdf-vm Version Manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# Bundler
gem install bundler

# Ruby REPL
gem install pry

# JSON Viewer
sudo pacman -S jq --noconfirm

# Ruby frameworks
gem install rails
gem install hanami

# Memcached
sudo pacman -S memcached --noconfirm

# Heroku CLI
sudo snap install heroku --classic

#Elixir
sudo pacman -S elixir --noconfirm
sudo pacman -S inotify-tools --noconfirm

# Gitlab community edition
# sudo pacman -S gitlab --noconfirm

#Docker
sudo pacman -S docker --noconfirm
sudo systemctl enable docker.service

sudo pacman -S docker-compose --noconfirm

# Vagrant
# sudo pacman -S vagrant --noconfirm

# LXC Plugin
# vagrant plugin install vagrant-lxc

# Install and configure bridge
# sudo pacman -S dnsmasq net-tools bridge-utils
# echo "USE_LXC_BRIDGE=true" | sudo tee -a /etc/default/lxc-net
# echo "lxc.net.0.type = veth\nlxc.net.0.link = lxcbr0\nlxc.net.0.flags = up\nlxc.net.0.hwaddr = 00:16:3e:xx:xx:xx" | sudo tee -a /etc/lxc/default.conf

# Start and enable lxc-net service
# sudo systemctl start lxc-net
# sudo systemctl enable lxc-net.service

# LXC
# sudo pacman -S lxc arch-install-scripts --noconfirm

# Ansible
# sudo pacman -S ansible --noconfirm

# Exercism
sudo snap install exercism

# JS
sudo pacman -S yarn --noconfirm
sudo pacmsn -S npm --noconfirm
yarn global add @vue/cli

# Man page alternative
npm install tldr -g

# Postgresql
sudo pacman -S postgresql --noconfirm
# Create new db cluster
sudo -u postgres -i initdb --locale $LANG -E UTF8 -D /var/lib/postgres/data
# Start and enable postgres service
sudo systemctl start postgresql.service
sudo systemctl enable postgresql.service

# Configure GIT
git config --global user.name "Sahil Gadimbayli"
git config --global user.email "sahil.gadimbay@gmail.com"
# Protect from windows line endings
git config --global core.autocrlf input

# Add fish like syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
