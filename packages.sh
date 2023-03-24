#!/bin/bash

# INSTALLS
# clone and install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc

# Install ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb

# install vim plugin manger
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt-get colordiff

# call vim plugin manager to install plugins
vim +'PlugInstall --sync' +qa

# install fd
curl -LO https://github.com/sharkdp/fd/releases/download/v8.0.0/fd_8.0.0_amd64.deb
sudo dpkg -i fd_8.0.0_amd64.deb

# x11
sudo apt install x11-xserver-utils 
