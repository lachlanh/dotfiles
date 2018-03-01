cp ~/.tmux.conf ./.tmux.conf
cp ~/.vimrc ./.vimrc
cp ~/.zshrc ./.zshrc
cp ~/.bash_profile ./.bash_profile
cp ~/.gitconfig ./.gitconfig
cp ~/.emacs.d/init.el ./.emacs.d/init.el
cp ~/.profile ./.profile
#use -anv for dry run
rsync -a ~/.vim/rc/ ./.vim/rc
rsync -a ~/.vim/autoload/ ./.vim/autoload
rsync -a ~/.emacs.d/customizations/ ./.emacs.d/customizations
rsync -a ~/.config/i3/ ./.config/i3
