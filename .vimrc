set nu
set hlsearch
set confirm
set tabstop=4
set autoread
set autoindent
set ruler
set showcmd
set guifont=Consolas:h14
set guifontwide=Microsoft\ YaHei:h14
set encoding=utf-8
set foldenable
set fdm=syntax
set fileformat=unix
set t_Co=256
"let g:molokai_origin=1
set background=dark
syntax enable

let mapleader=','
nnoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

nmap ss <Plug>(easymotion-s2)

call plug#begin('~/.vim/plugged')
	Plug 'tomasr/molokai'

	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'yggdroot/indentline'
	
	Plug 'mhinz/vim-startify'

	Plug 'ctrlpvim/ctrlp.vim'

	Plug 'easymotion/vim-easymotion'
	
	Plug 'lfv89/vim-interestingwords'

	Plug 'tpope/vim-commentary'

	Plug 'tpope/vim-fugitive'
call plug#end()
