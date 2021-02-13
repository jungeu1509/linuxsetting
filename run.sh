#!/bin/bash

echo 'PARAM:' $0
RELATIVE_DIR=`dirname "$0"`
cd $RELATIVE_DIR
SHELL_PATH=`pwd -P`
echo "shell location : $SHELL_PATH"
GALAXY_ROOT='/data/data/com.termux/files'

echo 'export PS1="\[$(tput bold)\][\t]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;14m\]\u@\[$(tput sgr0)\]\[\033[38;5;10m\]\H:\[$(tput sgr0)\]\[\033[38;5;203m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$\[$(tput sgr0)\]"' >> ~/.bashrc
echo 'export ROOT="/data/data/com.termux/files/"'

pkg install -y tree vim-python python nodejs yarn clang openssl-tool ripgrep
echo "Setting : download pkg success"

cp vim/.vimrc ~/.vimrc
cp vim/jellybeans.vim $GALAXY_ROOT/usr/share/vim/vim82/colors

mkdir ~/.vim
mkdir ~/.vim/bundle
cd ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git
cd $RELATIVE_DIR
echo "Setting : enter ':PluginInstall' in vim"

echo "yarn global add code-server"
cp code-server/binding.gyp ~/.config/yarn/global/node_modules/code-server/lib/vscode/node_modules/spdlog/binding.gyp
cd ~/.config/yarn/global/node_modules/code-server/lib/vscode/node_modules/spdlog/
npm install
ln -s $(which rg) ~/.config/yarn/global/node_module/code-server/lib/vscode/node_modules/vscode-ripgrep/bin/
echo "Setting : download code-server success"
cd $RELATIVE_DIR

echo "Setting : run success"
