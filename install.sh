#!/bin/bash

# INSTALLS
# clone and install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc
# search tool used for fzf
sudo apt-get install silversearcher-ag
sudo apt-get colordiff

# create the symlinks from the dotfile repo pointing to their existing location
ln -sv ~/dotfiles/.bash_profile ~/.bash_profile
ln -sv ~/dotfiles/.inputrc ~/.inputrc
if [ -f ~/.gitconfig ]; then
	cp ~/.gitconfig ~/.gitconfig.backup
	echo "Overwriting .gitconfig. Backup created."
fi
ln -svf ~/dotfiles/git/.gitconfig ~/.gitconfig
