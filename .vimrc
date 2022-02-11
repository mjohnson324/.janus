set nomodeline
set nocompatible
set foldmethod=indent
set foldlevelstart=99
set undolevels=1000
set encoding=UTF-8
set history=50
set ruler
set number
set backspace=indent,eol,start
set cursorline
set cursorcolumn

" Tabs and no annoying error pings
set showmatch
set ignorecase
set incsearch
set vb t_vb=
set hlsearch

" Set tab and indentation behavior
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab

autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4

set background=dark
set termguicolors
colorscheme monokai-phoenix

" Custom Commands
let mapleader = ","

" Navigate tabs
nn <Leader>w <c-w>w
nn <Leader>j <c-w>j
nn <Leader>k <c-w>k
nn <Leader>h <c-w>h
nn <Leader>l <c-w>l
nn <Leader>t :tabn <Enter>
nn <Leader>T :tabp <Enter>

" resize windows
nn <Leader>> :vertical resize +10 <Enter>
nn <Leader>< :vertical resize -10 <Enter>
nn <Leader>0 :vertical resize 30 <Enter>
nn <Leader>+ :resize +5 <Enter>
nn <Leader>- :resize -5 <Enter>
nn <Leader>\ :NERDTree <Enter>

" issue commands
nn <Leader><Space> :FixWhitespace <Enter>
nn <Leader>r :SyntasticReset <Enter>

" Key Combos
vn <Leader>y "*y

" End word wrapping
set nowrap
set nolinebreak

" Nerdcommenter
filetype plugin on

" Nerdtree
let NERDTreeAutoDeleteBuffer = 1

" Indent-Guides
let g:indent_guides_enable_on_vim_startup = 1

" Airline and Syntastic
let g:airline#extensions#syntastic#enabled = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_python_exec = 'python'
let g:syntastic_python_checkers = ['pylint', 'flake8', 'bandit', 'mypy']

syntax on
