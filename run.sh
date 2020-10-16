#!/bin/sh

echo 'export PS1="\[$(tput bold)\][\t]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;14m\]\u@\[$(tput sgr0)\]\[\033[38;5;10m\]\H:\[$(tput sgr0)\]\[\033[38;5;203m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$\[$(tput sgr0)\]"' >> ~/.bashrc

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall


echo 'PARAM:' $0
RELATIVE_DIR=`dirname "$0"`
cd $RELATIVE_DIR
SHELL_PATH=`pwd -P`


cp vim/.vimrc ~/.vimrc
sudo cp vim/jellybeans.vim /usr/share/vim/vim*

mkdir ~/.vim
mkdir ~/.vim/bundle
cd ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git

