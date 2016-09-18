"SETTINGS
"------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

"Normal Settings:

let mapleader = ","

set encoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set number
set relativenumber
colorscheme lazarus 
syntax on 
filetype on

"Plugin Custom:

"LightLine:

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

set laststatus=2

set t_Co=256

augroup reload_vimrc
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

"NerdTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nmap <leader>j :NERDTree<cr>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
\ }
