cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
#use -anv for dry run
rsync -a ./.vim/rc/ ~/.vim/rc
rsync -a ./.vim/autoload/ ~/.vim/autoload
rsync -a ./.emacs.d/ ~/.emacs.d
