" ####################################################
" ########## VIMRC MOZER (BME & KIT) 2020 ############
" ####################################################

" Disable vi compatibility
set nocompatible

" syntax and numbering on
syntax on
set number

" Set cursor highlighting
set cursorline
" set cursorcolumn




filetype on         " enable general filetype detection
filetype plugin on  " enable plugins
filetype indent on  " enable autoindenting
set autoindent

" plugins

set noerrorbells	" No soundeffects on end of the line
set tabstop=4 softtabstop=4	" Tab is 4 spaces long
set shiftwidth=4
set expandtab	" Write tab as spaces
set smartindent	" Autoindenting
set smartcase	" Search is case sensitive
set noswapfile	" No vim.swapfiles created
set nobackup	" Because I don't need it thx
set undodir=~/.vim/undodir	"" Save changes in a file
set undofile	" -||-
set history=1000
set incsearch	" Results while searching
set showmode    " show the mode you are on the last line
set showmatch   " Show matching words during search
set hlsearch    " Use highlighting when searching

" Enable bash-like autocompletion
set wildmenu
set wildmode=list:longest

" enabling highligting for doxygen in C/C++ files by enabling doxygen as subtype
augroup project
    autocmd!
    autocmd BufRead, BufNewFile *.h, *.c set filetype=c.doxygen
    autocmd BufRead, BufNewFile *.hpp, *.cpp set filetype=cpp.doxygen
augroup END

" autocompleting braces, parentheses and what have you
inoremap { {}<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha

