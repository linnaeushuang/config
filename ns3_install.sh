#!/bin/bash
cd ~
sudo apt-get install gcc \
	g++ \
	python \
	python-dev \
	git \
	qt5-default \
	python-pygraphviz python-kiwi python-pygoocanvas libgoocanvas-dev \
	ipython \
	openmpi-bin \
	openmpi-common \
	openmpi-doc \
	libopenmpi-dev \
	gdb \
	valgrind \
	uncrustify \
	doxygen \
	graphviz \
	imagemagick \
	texlive texlive-extra-utils \
	texlive-latex-extra \
	texlive-font-utils texlive-lang-portuguese \
	dvipng \
	python-sphinx \
	dia \
	gsl-bin libgsl2 libgsl-dev \
	flex bison libfl-dev \
	tcpdump \
	sqlite sqlite3 libsqlite3-dev \
	libxml2 libxml2-dev \
	cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake \
	python-pip  libgtk2.0-0 libgtk2.0-dev \
	vtun lxc \
	libboost-signals-dev libboost-filesystem-dev
pip install cxxfilt
#use mercurial to download#######################################
#mkdir repos
#cd repos
#hg clone http://code.nsnam.org/ns-3-allinone
#cd ns-3-allinone
#./download.py -n ns-3-dev
##################################################################
#if use tarbll to dawnload########################################
mkdir -p ~/tarballs/dashData
wget -P ~/tarballs https://www.nsnam.org/releases/ns-allinone-3.29.tar.bz2
tar -xjf ~/tarballs/ns-allinone-3.29.tar.bz2 -C ~/tarballs/
##################################################################
cd ~/tarballs/ns-allinone-3.29
python2.7 ./build.py
cd ~/tarballs/ns-allinone-3.29/ns-3.29
./waf configure --enable-examples
./waf --run hello-simulator
