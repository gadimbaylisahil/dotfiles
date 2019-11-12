#!/bin/env bash

# Refresh pacman
sudo pacman -Syy

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

#[Configure GIT]
git config --global user.name "Sahil Gadimbayli"
git config --global user.email "sahil.gadimbay@gmail.com"
