#!/bin/bash

#Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
sudo ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
vim +PluginInstall +qall
update-alternatives --config editor 

