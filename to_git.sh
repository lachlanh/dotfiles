cp ~/.tmux.conf ./.tmux.conf
cp ~/.vimrc ./.vimrc
cp ~/.zshrc ./.zshrc
cp ~/.bash_profile ./.bash_profile
cp ~/.gitconfig ./.gitconfig
cp ~/.emacs.d/init.el ./.emacs.d/init.el
cp ~/.emacs.d/ui.el ./.emacs.d/ui.el
cp ~/.emacs.d/packages.el ./.emacs.d/packages.el
cp ~/.emacs.d/navigation.el ./.emacs.d/navigation.el
cp ~/.emacs.d/editing.el ./.emacs.d/editing.el
cp ~/.emacs.d/programming.el ./.emacs.d/programming.el
cp ~/.profile ./.profile
cp ~/.compton.conf ./.compton.conf
#use -anv for dry run
rsync -a ~/.config/i3/ ./.config/i3
rsync -a ~/.config/alacritty/ ./.config/alacritty
