" ####################################################
" ##########     VIMRC MOZER (ARM) 2023    ###########
" ####################################################

" syntax and numbering on
syntax on
set relativenumber
set number

filetype on                                     " enable file type detection
filetype plugin on                              " enable plugins
filetype indent on                              " enable autoindenting
set autoindent

" color adjustment stuff
highlight LineNr ctermfg=yellow
highlight Statement ctermfg=yellow

" plugins
set noerrorbells                                " No soundeffects on end of the line
set tabstop=4 softtabstop=4                     " Tab is 4 spaces long
set shiftwidth=4
set expandtab                                   " Write tab as spaces
set smartindent                                 " Autoindenting
set nowrap                                      " Line goes offscreen when too long
set smartcase                                   " Search is case sensitive
set noswapfile                                  " No vim.swapfiles created
set nobackup                                    " Because I don't need it thx
set undodir=~/.vim/undodir                      " Save changes in a file
set undofile                                    " -||-
set incsearch                                   " Results while searching
set nocompatible                                " Disable vi backwards compatibiliyu

"setting cursor modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

set cursorline

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


if has('gui_running')
    autocmd BufRead,BufNewFile *.py colorscheme everforest
    autocmd BufRead,BufNewFile *.py set background=dark
    autocmd BufRead,BufNewFile *.sv colorscheme gruvbox
    autocmd BufRead,BufNewFile *.v colorscheme gruvbox
    autocmd BufRead,BufNewFile *.v set background=dark

    " Disable toolbar and scrollbars
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=m
    set guioptions-=b

    " set up copy and paste
    nnoremap <M-S-c> "+y  " Normal (must follow with an operator)
    xnoremap <M-S-c> "+y  " Visual
    nnoremap <M-S-v> "+p  " Normal
    noremap! <M-S-v> <C-r>+  " Insert and Command line
    inoremap <M-S-v> <C-r>+  " Insert
endif




