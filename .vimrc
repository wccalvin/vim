" Author - VWJ
" Reference - https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

set nocompatible " not compatible with old-fashion vi mode
" set number " turn on line numbering
syntax on " enable syntax highlighting
set bg=dark
set history=700 "keep 50 lines of command line history
set backspace=eol,start,indent "configure backspace so it acts as it should act
filetype on " enable filetype detection
filetype indent on " enable filetype-specific indenting

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

set hlsearch " search highlighting

" Indent related
set autoindent 
set smartindent
set wrap
set copyindent 

set incsearch " incremental search
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise
set autoread " Set to auto read when a file is changed from outside
set cmdheight=2 " Height of the command bar
set ruler " Always show current position
set magic " turn magic on for regular expressions

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set foldcolumn=1 " add a bit of extra margin to the left

set smarttab " be smart when using tabs

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab
set laststatus=2 " always show the status line

set showmatch "Show matching brackets when text indicator is over them
set mat=2 " how many tenths of a second to blink when matching brackets

" color scheme
:color elflord
" colorscheme solarized

" copy to system clipboard
set clipboard+=unnamedplus	" use the clipboards of vim and win
set paste					" Paste from a windows or from vim

" Enable line numbering for python and perl
autocmd FileType python set number
autocmd FileType perl set number
