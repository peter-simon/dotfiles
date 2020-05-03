# create the symlinks from the dotfile repo pointing to their existing location
ln -sv ~/dotfiles/.bash_profile ~/.bash_profile

ln -sv ~/dotfiles/.inputrc ~/.inputrc

if [ -f ~/.gitconfig ]; then
	cp ~/.gitconfig ~/.gitconfig.backup
	echo "Overwriting .gitconfig. Backup created."
fi

ln -svf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -svf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -svf ~/dotfiles/rg/.ripgreprc ~/.ripgreprc
