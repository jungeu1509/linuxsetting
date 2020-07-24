sudo apt-get install -y git

cp .vimrc ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/bundle

cd ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git


echo "check ~/.vimrc and jellybeans.vim"
echo "you must install plugin in vim to input command :PluginInstall"
