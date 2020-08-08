set rtp^=~/.vim
call plug#begin('~/.vim/plugged')
Plug 'lewis6991/moonlight.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'psf/black'
Plug 'nvie/vim-flake8'
Plug 'heavenshell/vim-tslint'
Plug 'prettier/vim-prettier'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
call plug#end()

colo moonlight

syntax enable
set number relativenumber
set termguicolors
set background=dark
set laststatus=2
set guicursor=
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set incsearch
set ignorecase
filetype indent on

augroup cmds
    autocmd!
    autocmd BufWritePre *.py execute ':Black'
    autocmd BufWritePre *.ts call ExecPrettier()
augroup END

let mapleader=","
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <c-p> :Files<return>
nnoremap <leader>w  <Esc>:w<return>
inoremap <leader>w  <Esc>:w<return>
inoremap jk <esc>

function ExecPrettier()
    lcd %:p:h
    execute ':PrettierAsync'
    execute 'cd' getcwd(-1)
endfunction
