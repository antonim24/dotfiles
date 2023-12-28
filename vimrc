" Disable backwards compatibility with vi
set nocompatible

" Automatic filetype detection
filetype on

" Enable syntax highlighting
syntax on

" Add numbers
set number

" Highlight current line
set cursorline

" Set default indentation values
set shiftwidth=4
set tabstop=4
" Use spaces instead of tabs
set expandtab
" Auto indentation
set autoindent

" Show mode on last line
set showmode

" Use system clipboard
set clipboard=unnamedplus

""" Searching """
" Highlight Searches
set hlsearch

" Incremental highlighint as you search
set incsearch

""" Autocommands """
" Use tabs instead of spaces for Makefiles
autocmd FileType make setlocal noexpandtab

" Syntax highlighting for bash_aliases and other aliases
autocmd BufNewFile,BufRead *aliases set ft=sh
