#!/bin/bash

cp .profile ~/.profile
cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bash_aliases
cp .gitconfig ~/.gitconfig

cp .config/starship.toml ~/.config/starship.toml
cp -r .config/zellij/* ~/.config/zellij/
cp -r .config/nvim/lua/custom/* ~/.config/nvim/lua/custom/
