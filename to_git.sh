cp ~/.tmux.conf ./.tmux.conf
cp ~/.vimrc ./.vimrc
cp ~/.zshrc ./.zshrc
cp ~/.bash_profile ./.bash_profile
cp ~/.gitconfig ./.gitconfig
cp ~/.emacs.d/init.el ./.emacs.d/init.el
cp ~/.profile ./.profile
cp ~/.compton.conf ./.compton.conf
#use -anv for dry run
rsync -a ~/.emacs.d/config/ ./.emacs.d/config
rsync -a ~/.config/i3/ ./.config/i3
rsync -a ~/.config/alacritty/ ./.config/alacritty
