"
" minimal vimrc with no (extra) plugins
"

"load system defaults
if filereadable(expand('$VIMRUNTIME/defaults.vim'))
    unlet! g:skip_defaults_vim
    source $VIMRUNTIME/defaults.vim
endif

"regular settings
"----------------
" ui
" set number
set ruler
set wildmenu
set showcmd
set showmatch

" encoding/format
set encoding=utf-8
set fileformats=unix,dos,mac

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" indent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" key timeout values
set esckeys
set ttimeoutlen=20
set timeoutlen=1000

set scrolloff=10
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
