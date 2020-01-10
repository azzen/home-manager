"""""""""""""""""""""""""""""""""""
"                                 "
"   ~### Vim configuration ###~   "
"                                 "
"""""""""""""""""""""""""""""""""""

set nocompatible                        " Vim settings instead of Vi settings
set belloff=all                         " Disable bell
set number                              " Show line number 
syntax on                               " Syntax highlighting
filetype plugin indent on               " Turn on detection, plugin and indent
set shiftwidth=2                        " 2 tabs / spaces indent
set expandtab                           " Spaces instead of tabs

"""""""""""""""""""""""""""""""""""
"                                 "
" ~### Plugin manager (Plug) ###~ "
"                                 "
"""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'                    " LaTeX edition
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'scrooloose/syntastic'             " Syntax checking
Plug 'vim-airline/vim-airline'          " Statusline and tabline
Plug 'vim-airline/vim-airline-themes'   " Airline themes
Plug 'sirver/ultisnips'                 " Snippet manager
Plug 'honza/vim-snippets'               " Collection of snippets for various languages

call plug#end()

"""""""""""""""""""""""""""""""""""
"                                 "
" ~### Globals configuration ###~ "
"                                 "
"""""""""""""""""""""""""""""""""""

" Vimtex
let g:vimtex_view_general_viewer         = 'zathura'

" Ultisnips
let g:UltiSnipsExpandTrigger             = "<tab>"
let g:UltiSnipsJumpForwardTrigger        = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger       = "<c-z>"

" Airline
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""
"                                 "
"      ~### Keybindings ###~      "
"                                 "
"""""""""""""""""""""""""""""""""""

:map <c-x> i
