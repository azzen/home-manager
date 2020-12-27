"""""""""""""""""""""""""""""""""""
"                                 "
"   ~### Vim configuration ###~   "
"                                 "
"""""""""""""""""""""""""""""""""""
hi clear Conceal                        " Fix weird coloring
set nocompatible                        " Vim settings instead of Vi settings
set belloff=all                         " Disable bell
set number                              " Show line number 
syntax on                               " Syntax highlighting
filetype plugin indent on               " Turn on detection, plugin and indent

"""""""""""""""""""""""""""""""""""
"                                 "
"   ~### Identation config ###~   "
"                                 "
"""""""""""""""""""""""""""""""""""

set shiftwidth=2                       
set tabstop=2
set autoindent
set smartindent

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
Plug 'tpope/vim-surround'               " Mapping to surround text with brackets, parentheses etc.
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex'} " LaTeX live preview
Plug 'preservim/nerdtree'               " File explorer
Plug 'justmao945/vim-clang'             " C/C++ completion
Plug 'rust-lang/rust.vim'               " Rust configuration
Plug 'preservim/nerdcommenter'					" Comment utility

call plug#end()

"""""""""""""""""""""""""""""""""""
"                                 "
" ~### Globals configuration ###~ "
"                                 "
"""""""""""""""""""""""""""""""""""

" Vimtex
let g:vimtex_view_general_viewer          ='SumatraPDF'
let g:livepreview_previewer               ='SumatraPDF'
let g:vimtex_view_general_options	  			='-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk ='-reuse-instance'
let g:vimtex_quickfix_mode                =0
let g:tex_flavor 													="latex"
let g:tex_conceal                         ="abgdms"
set conceallevel                          =2
set concealcursor                         =n
set switchbuf                             +=usetab,newtab 
" Ultisnips
let g:UltiSnipsExpandTrigger             ="<c-a>"
let g:UltiSnipsJumpForwardTrigger        ="<c-s>"
let g:UltiSnipsJumpBackwardTrigger       ="<c-d>"
" Airline
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts            =1


"""""""""""""""""""""""""""""""""""
"                                 "
"      ~### Keybindings ###~      "
"                                 "
"""""""""""""""""""""""""""""""""""

map <c-x> i
map <c-n> :NERDTreeToggle<CR>
map <c-k> :bp<CR>
map <c-l> :bn<CR>
