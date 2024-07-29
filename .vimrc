


set noswapfile
"set scrolloff=7



set backspace=indent,eol,start

" Basic default config
syntax enable
filetype plugin indent on
set encoding=UTF-8
set hlsearch incsearch ignorecase
set number relativenumber
set mouse=a
set showmatch
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set background=dark 
set nocompatible
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

if has('termguicolors')
	set termguicolors
endif




" Font
set guifont=Fira\ Code\ Medium:h10
let g:NERDTreeShowDevIcons = 1

" C/C++ syntax highlighting
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1

" Statusline
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'gruvbox_material',
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }
" Colorscheme


""set splitbelow

autocmd FileType python nmap <buffer> <c-b> <Esc>:w<CR>:!clear;python3 %<CR>
autocmd FileType python imap <buffer> <c-b> <Esc>:w<CR>:!clear;python3 %<CR>


autocmd FileType javascript nmap <buffer> <c-b> <Esc>:w<CR>:!clear;node %:r.js <CR>
autocmd FileType javascript imap <buffer> <c-b> <Esc>:w<CR>:!clear;node %:r.js <CR>



autocmd FileType rust nnoremap <buffer> <c-b> <Esc> :w <bar>:!clear  && rustc  %:r.rs  && ./%:r <CR>
autocmd FileType rust inoremap <buffer> <c-b> <Esc> :w <bar>:!clear  && rustc  %:r.rs  && ./%:r <CR>

autocmd FileType cpp inoremap <buffer> <c-b> <Esc> :w <bar>:!clear  && g++ -o %:r.out %  && ./%:r.out <CR>
autocmd FileType cpp nnoremap <buffer> <c-b> <Esc> :w <bar>:!clear  && g++ -o %:r.out %  && ./%:r.out <CR>

autocmd FileType c inoremap <buffer> <c-b> <Esc> :w <bar>:!clear  && gcc -o %:r.out %  && ./%:r.out <CR>
autocmd FileType c nnoremap <buffer> <c-b> <Esc> :w <bar>:!clear  && gcc -o %:r.out %  && ./%:r.out <CR>



inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
nnoremap Y y$



call plug#begin('~/.vim/plugged')



Plug 'morhetz/gruvbox'

" Plug 'vim-airline/vim-airline'

Plug 'KarimElghamry/vim-auto-comment'

Plug 'psliwka/vim-smoothie'
Plug 'ryanoasis/vim-devicons' " Dev icons
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim' " Status bar
"Plug 'vimsence/vimsence' " Discord rich presence
Plug 'sainnhe/gruvbox-material' "Colorscheme

call plug#end()

colorscheme gruvbox-material
