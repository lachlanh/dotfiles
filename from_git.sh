cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp .bash_profile ~/.bash_profile
cp .gitconfig ~/.gitconfig
#use -anv for dry run
rsync -a ./.vim/rc/ ~/.vim/rc
rsync -a ./.vim/autoload/ ~/.vim/autoload
