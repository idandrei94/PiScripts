#!/bin/bash
apt-get update
apt-get install -y vim build-essential cmake python-dev python3-dev openjdk-8-jdk eclipse eclipse-cdt apache2 mysql-server libmysqlcppconn-dev chromium-browser codeblocks
echo "set exrc" >> /usr/share/vim/vimrc
echo "set secure" >> /usr/share/vim/vimrc
echo "set tabstop=4" >> /usr/share/vim/vimrc
echo "set softtabstop=4" >> /usr/share/vim/vimrc
echo "set shiftwidth=4" >> /usr/share/vim/vimrc
echo "set noexpandtab" >> /usr/share/vim/vimrc
echo "set colorcolumn=110" >> /usr/share/vim/vimrc
echo "highlight ColorColumn ctermbg=darkgray" >> /usr/share/vim/vimrc
echo "set number" >> /usr/share/vim/vimrc
echo "lcd_rotate=2" >> /boot/config.txt
