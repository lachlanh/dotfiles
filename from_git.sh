#!/bin/bash
cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
#cp .bash_profile ~/.bash_profile
cp .gitconfig ~/.gitconfig
cp .profile ~/.profile
cp .xsession ~/.xsession
cp .Xresources ~/.Xresources
#cp .compton.conf ~/.compton.conf
#use -anv for dry run
#rsync -a ./.vim/rc/ ~/.vim/rc
#rsync -a ./.vim/autoload/ ~/.vim/autoload
#rsync -a ./.emacs.d/ ~/.emacs.d
rsync -a ./.config/i3/ ~/.config/i3
#rsync -a ./.config/alacritty/ ~/.config/alacritty
rsync -a ./.config/sway/ ~/.config/sway
rsync -a ./.config/fish/ ~/.config/fish
rsync -a ./.config/systemd/ ~/.config/systemd
