set encoding=utf-8

"set number relativenumber


syntax enable

set noswapfile

set scrolloff=7

set backspace=indent,eol,start



""set splitbelow

autocmd FileType python nmap <buffer> <c-b> <Esc>:w<CR>:!clear;python3 %<CR>


autocmd FileType python imap <buffer> <c-b> <Esc>:w<CR>:!clear;python3 %<CR>


autocmd FileType rust nnoremap <buffer> <c-b> :w <bar>:!clear  && rustc  %:r.rs  && ./%:r <CR>

autocmd FileType cpp nnoremap <buffer> <c-b> :w <bar>:!clear  && g++ -o %:r.out %  && ./%:r.out <CR>




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

set background=dark

call plug#begin('~/.vim/plugged')


Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'
"Plug 'wuelnerdotexe/vim-enfocado'
"
Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'

Plug 'KarimElghamry/vim-auto-comment'



call plug#end()


