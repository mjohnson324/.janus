set nomodeline
syntax on
set nocompatible
set foldmethod=indent
set foldlevel=99
set undolevels=1000
set encoding=UTF-8
set history=50
set ruler
set number
set backspace=indent,eol,start

" Tabs and no annoying error pings
set showmatch
set ignorecase
set hlsearch
set incsearch
set vb t_vb=

" Set tab and indentation behavior
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

set background=dark
set termguicolors
colorscheme monokai-phoenix

" Custom Commands
let mapleader = ","
nmap <Leader><Leader> <C-W>
nmap <Leader>j :m+1 <Enter>
nmap <Leader>k :m-2 <Enter>
nmap <Leader>> :vertical resize +10 <Enter>
nmap <Leader>< :vertical resize -10 <Enter>
nmap <Leader>+ :resize +5 <Enter>
nmap <Leader>- :resize -5 <Enter>
nmap <Leader>\ :NERDTree <Enter>
nmap <Leader>h :noh <Enter>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" End word wrapping
set nowrap
set nolinebreak

" Nerdtree
filetype plugin on

py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
