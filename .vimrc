set encoding=utf-8

set number relativenumber

syntax enable

set noswapfile

set scrolloff=7

set backspace=indent,eol,start


nmap <F4> <Esc>:w<CR>:!clear;python3 %<CR>

imap <F4> <Esc>:w<CR>:!clear;python3 %<CR>




nnoremap <F2> :w <bar>:!clear  && g++ -o %:r.out %  && ./%:r.out <CR>
nnoremap <F3> :w <bar>:!clear  && rustc  %:r.rs  && ./%:r <CR>





inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


set tabstop=4

set softtabstop=4

set shiftwidth=4

set expandtab

set autoindent



call plug#begin('~/.vim/plugged')


Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'


Plug 'preservim/nerdtree'

Plug 'KarimElghamry/vim-auto-comment'

call plug#end()


