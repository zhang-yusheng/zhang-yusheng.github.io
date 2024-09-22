#!/bin/bash

# install ebook-convert and calibre
sudo apt update
# sudo apt install libegl1
# sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
sudo apt-get install calibre
sudo apt-get install fonts-arphic-ukai

mkdir -p ./_book/ebooks

# 设置书籍名称变量
bookname="yusheng-zhang-archive"

# 创建目标目录
mkdir -p ./_book/ebooks

honkit epub ./ ./_book/ebooks/${bookname}.epub

honkit pdf ./ ./_book/ebooks/${bookname}.pdf

honkit mobi ./ ./_book/ebooks/${bookname}.mobi