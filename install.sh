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

# create the symlinks from the dotfile repo pointing to their existing location
ln -sv ~/dotfiles/.bash_profile ~/.bash_profile
ln -sv ~/dotfiles/.inputrc ~/.inputrc
if [ -f ~/.gitconfig ]; then
	cp ~/.gitconfig ~/.gitconfig.backup
	echo "Overwriting .gitconfig. Backup created."
fi
ln -svf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -svf ~/dotfiles/vim/.vimrc ~/.vimrc
