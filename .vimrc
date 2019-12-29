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

set showmatch
set ignorecase
set hlsearch
set incsearch
set vb t_vb=

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

set background=dark
set termguicolors
colorscheme monokai-phoenix

let mapleader = ","
" map <Leader>A  oanother line<Esc>
" <leader>ew expands to :e (directory of current file)/ (open in the current buffer)
" <leader>es expands to :sp (directory of current file)/ (open in a horizontal split)
" <leader>ev expands to :vsp (directory of current file)/ (open in a vertical split)
" <leader>et expands to :tabe (directory of current file)/ (open in a new tab)
" nmap <F8> :TagbarToggle<CR>

py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
