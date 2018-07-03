set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-latex/vim-latex'
Plugin 'kien/ctrlp.vim'
Plugin 'PProvost/vim-ps1'
Plugin 'vim-python/python-syntax'
Plugin 'raimondi/delimitmate'
Plugin 'vim-airline/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'Alvarocz/vim-northpole'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'neutaaaaan/iosvkem'
Plugin 'Siphalor/vim-atomified'
Plugin 'edouardp/myob-colorscheme'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'emhaye/ceudah.vim'
call vundle#end()

set nu
set nocompatible 
set termguicolors
set laststatus=2
set t_Co=256
set background=dark
set guicursor=
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set autoindent
set fileformat=unix

iabbrev pl Plugin
iabbrev nd Neil Dunn

colo ceudah 

filetype plugin indent on
syntax on

" Plugin configs
let g:ycm_global_ycm_extra_conf = '/home/neil/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:cpp_class_decl_highlight = 1
let python_highlight_all=1
let g:airline_powerline_fonts = 1
let g:delimitMate_expand_cr = 1

" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*

"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'

let mapleader = "-"
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>  
inoremap <c-c> <nop> 

autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
