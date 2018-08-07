execute pathogen#infect()
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plugin 'fatih/molokai'
Plugin 'jlanzarotta/bufexplorer'
call vundle#end()
filetype plugin indent on

set backup
set backupdir=~/backup/vim
set backupext=.bak

set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start
set pastetoggle=<F9>

set nu
set nocompatible " be iMproved, required
set hlsearch
set incsearch
set ruler

noremap <F4> :NERDTreeToggle<CR>
noremap <F12> :GoDef<CR>

let g:NERDTreeGlyphReadOnly = "RO"
let g:molokai_original = 1
let g:rehash256 = 1
let g:go_fmt_command = "goimports"
let g:go_version_warning = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_calls = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go-lint']

colorscheme molokai
syntax on 

