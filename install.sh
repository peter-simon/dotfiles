#!/bin/bash

# clone and install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc

sudo apt-get install silversearcher-ag
# create the symlinks from the dotfile repo pointing to their existing location

# extend aliases
ln -sv ~/.dotfiles/runcom/.bashrc ~/.bashrc
