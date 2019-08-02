#!/bin/bash
sudo apt-get -y  remove vim vim-runtime gvim
sudo apt-get -y install libncurses5-dev \
	libgnome2-dev \
	libgnomeui-dev \
	libgtk2.0-dev \
	libatk1.0-dev \
	libbonoboui2-dev \
	libcairo2-dev \
	libx11-dev \
	libxpm-dev \
	libxt-dev \
	python-dev \
	git ctags
cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
	--enable-multibyte \
	--enable-pythoninterp=yes \
	--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
	--enable-gui=gtk2 \
	--enable-cscope \
	--prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
cd ~/vim
sudo make install


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/config/.vimrc ~/.vimrc
vim +PluginInstall +qall
cp ~/config/.ycm_extra_conf.py ~/.vim/bundle/.ycm_extra_conf.py
#sudo apt-get -y  install ctags #for tagbar

sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
