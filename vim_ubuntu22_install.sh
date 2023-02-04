#!/bin/bash
# only for python

sudo apt-get -y  remove vim vim-runtime gvim
sudo apt-get -y install vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/config/.vimrc_u22 ~/.vimrc
vim +PluginInstall +qall

sudo apt-get install exuberant-ctags
