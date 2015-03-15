" ## General
set encoding=utf-8
set number        " # show line numbers
set linebreak     " # break lines at word (requires wrap lines)
set showbreak=+++ " # wrap-broken line prefix
set textwidth=100 " # line wrap (number of cols)
set showmatch     " # highlight matching brace

set smartcase     " # enable smart-case search
set ignorecase    " # always case-insensitive
set incsearch     " # searches for strings incrementally

set autoindent    " # auto-indent new lines
set cindent       " # use 'c' style program indenting
set expandtab     " # use spaces instead of tabs
set shiftwidth=4  " # number of auto-indent spaces
set smartindent   " # enable smart-indent
set smarttab      " # enable smart-tabs
set softtabstop=4 " # number of spaces per tab
set modeline
set nocompatible
 
" ## Advanced
set ruler                      " # Show row and column ruler information

set undolevels=1000            " # Number of undo levels
set backspace=indent,eol,start " # Backspace behaviour

" ## Plugins
filetype plugin indent on 
execute pathogen#infect()

" ## Shortcuts
cnoremap sudow w !sudo tee % >/dev/null
let mapleader = ","

" ## Theme
set background=dark   " # Black Background
colorscheme solarized " # Solarized Colors
syntax enable         " # Syntax Coloring

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
