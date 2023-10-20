#!/bin/bash

#installing basic programmer stuff
sudo dnf install -y git gcc cargo python3-pip nodejs npm 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
#installing my programs
sudo dnf install -y vim neovim python3-neovim lsd htop btop fzf neofetch
#lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

#firefox plugins
firefox https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
firefox https://addons.mozilla.org/en-US/firefox/addon/darkreader/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search
firefox https://addons.mozilla.org/en-US/firefox/addon/new-tab-override/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search

#
# gnome nautalios extenstions
sudo dnf install -y nautilus-extensions git python3 python-requests nautilus-python python3-gobject
#

#zsh for humans script
#if command -v curl >/dev/null 2>&1; then
#  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
#else
#  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
#fi


echo "add the lsd commands to .zshrc"



