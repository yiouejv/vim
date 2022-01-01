set nu
set hlsearch
set confirm
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoread
" set autoindent
set ruler
set showcmd
set guifont=Consolas:h14
set guifontwide=Microsoft\ YaHei:h14
set encoding=utf-8
set foldenable
set fdm=syntax
set fileformat=unix
set t_Co=256
set background=dark
colorscheme hybrid
syntax enable
set foldmethod=indent
set incsearch
set hlsearch
set ignorecase
" vim 里的数都认为是十进制
set nrformats=

"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块
set listchars=tab:»■,trail:■
set list

let mapleader=','
nnoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
nnoremap <leader>x gUiwea
nnoremap <leader>z guiwea

" 搜索文件
let g:Lf_ShortcutF = "<leader>ff"
" 搜索函数
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" 搜索单词
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
" 搜索最近使用过的文件 search most recently used files
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" 当前编辑的buffer
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>

" 打开一个窗口，展示你打开文件的函数, <C-p> 可以搜索文件往窗口里加
noremap <leader>t :Tlist<CR><CR>

" change tab
nnoremap p[ :tabprevious<CR>
nnoremap n[ :tabnext<CR>
nnoremap tt :tab split<CR>

nmap ss <Plug>(easymotion-s2)

""""""""""""""""""""""""""""""""""""""""""""""" 设好了几乎不动的配置
" airline theme config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" taglist
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim


"""""""""""""""""""""""""""""""""""""""""""  以下是需要安装依赖的
"sudo apt-get install ack-grep
nnoremap <Leader>a :Ack!<Space>

" 支持在Visual模式下，通过C-y复制到系统剪切板
" 查看是否支持 vim --version| grep "clipboard"
" 不支持需要安装 sudo apt install vim-gtk
vnoremap <C-y> "+y
" " 支持在normal模式下，通过C-p粘贴系统剪切板

" sudo apt-get install ctags
" Plug 'thisivan/vim-taglist'

"""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
	Plug 'tomasr/molokai'

	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'yggdroot/indentline'
	
	Plug 'mhinz/vim-startify'

    " 已废弃
	" Plug 'ctrlpvim/ctrlp.vim'

	Plug 'easymotion/vim-easymotion'
	
	Plug 'lfv89/vim-interestingwords'

	Plug 'tpope/vim-commentary'

	Plug 'tpope/vim-fugitive'

	Plug 'w0ng/vim-hybrid'

	Plug 'mileszs/ack.vim'

    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

    Plug 'thisivan/vim-taglist'


call plug#end()

