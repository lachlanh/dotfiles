cp ~/.tmux.conf ./.tmux.conf
cp ~/.vimrc ./.vimrc
#use -anv for dry run
rsync -anv ~/.vim/rc/ ./.vim/rc
rsync -anv ~/.vim/autoload/ ./.vim/autoload
