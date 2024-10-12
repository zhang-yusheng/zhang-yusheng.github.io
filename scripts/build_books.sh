#!/bin/bash

# install ebook-convert and calibre
sudo apt update
# sudo apt install libegl1
# sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
sudo apt-get install calibre
sudo apt-get install fonts-arphic-ukai

# make dir to place books
bookdir="./ebooks"
mkdir -p ${bookdir}

# 设置书籍名称变量
bookname="yusheng-zhang-archive"

honkit epub ./ ${bookdir}/${bookname}.epub

honkit pdf ./ ${bookdir}/${bookname}.pdf

honkit mobi ./ ${bookdir}/${bookname}.mobi