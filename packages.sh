#!/bin/bash

# INSTALLS
# clone and install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc

# Install ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
sudo dpkg -i ripgrep_14.1.1-1_amd64.deb

# install vim plugin manger
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt-get colordiff

# call vim plugin manager to install plugins
vim +'PlugInstall --sync' +qa

# install fd
curl -LO https://github.com/sharkdp/fd/releases/download/v10.2.0/fd_10.2.0_amd64.deb 
sudo dpkg -i fd_10.2.0_amd64.deb

# x11
sudo apt install x11-xserver-utils 
