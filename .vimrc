" ####################################################
" ########## VIMRC MOZER (BME & KIT) 2020 ############
" ####################################################

" syntax and numbering on
syntax on
set relativenumber

filetype plugin on  " enable plugins

" plugins

set noerrorbells	" No soundeffects on end of the line
set tabstop=4 softtabstop=4	" Tab is 4 spaces long
set expandtab	" Write tab as spaces
set smartindent	" Autoindenting
set nowrap	" Line goes offscreen when too long
set smartcase	" Search is case sensitive
set noswapfile	" No vim.swapfiles created
set nobackup	" Because I don't need it thx
set undodir=~/.vim/undodir	"" Save changes in a file
set undofile	" -||-
set incsearch	" Results while searching

" locate cursor
"set cursorline
"set cursorcolumn

" enabling highligting for doxygen in C/C++ files by enabling doxygen as subtype
augroup project
    autocmd!
    autocmd BufRead, BufNewFile *.h, *.c set filetype=c.doxygen
    autocmd BufRead, BufNewFile *.hpp, *.cpp set filetype=cpp.doxygen
augroup END

" autocompleting braces, parentheses and what have you
inoremap {<Return> {<Return><Return>}<ESC>ki
inoremap { {}<ESC>ha
inoremap " ""<ESC>ha
inoremap "<Space> "<Space>
inoremap <<Return> <><ESC>ha
inoremap <<Space> <
inoremap ' ''<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
