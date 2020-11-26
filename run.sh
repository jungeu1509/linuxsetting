#!/bin/bash

echo 'PARAM:' $0
RELATIVE_DIR=`dirname "$0"`
cd $RELATIVE_DIR
SHELL_PATH=`pwd -P`
echo "shell location : $SHELL_PATH"

echo 'export PS1="\[$(tput bold)\][\t]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;14m\]\u@\[$(tput sgr0)\]\[\033[38;5;10m\]\H:\[$(tput sgr0)\]\[\033[38;5;203m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$\[$(tput sgr0)\]"' >> ~/.bashrc

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall

sudo apt-get install -y libssl-dev build-essential libpcap-dev libpci-dev libsndfile1-dev libjack-dev git libncurses5-dev libncursesw5-dev doxygen unity-tweak-tool vim-gtk git tree
echo "Setting : download success"

cp vim/.vimrc ~/.vimrc
sudo cp vim/jellybeans.vim /usr/share/vim/vim74/colors

mkdir ~/.vim
mkdir ~/.vim/bundle
cd ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git
cd $RELATIVE_DIR
echo "Setting : enter ':PluginInstall' in vim"

cd $SHELL_PATH/cmake-3.19.1
./bootstrap && make && sudo make install

sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y numix-*

echo "Setting : run success"
