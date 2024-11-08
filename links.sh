# create the symlinks from the dotfile repo pointing to their existing location
basedir=$(pwd)

ln -sv "$basedir/.bash_profile" ~/.bash_profile

ln -sv "$basedir/.inputrc" ~/.inputrc

if [ -f ~/.gitconfig ]; then
	cp ~/.gitconfig ~/.gitconfig.backup
	echo "Overwriting .gitconfig. Backup created."
fi

ln -svf "$basedir/git/.gitconfig" ~/.gitconfig
ln -svf "$basedir/vim/.vimrc" ~/.vimrc
ln -svf "$basedir/rg/.ripgreprc" ~/.ripgreprc
