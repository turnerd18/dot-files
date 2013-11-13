set nocompatible               " be iMproved
filetype off                   " required!

"""" VUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"" Bundles
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'jwhitley/vim-matchit'
Bundle 'tpope/vim-surround'
Bundle 'sjl/gundo.vim'
Bundle 'jlanzarotta/bufexplorer'


"""" PATHOGEN
execute pathogen#infect()
syntax on
filetype plugin indent on     " required!


"""" NERDTREE
let g:NERDTreeDirArrows=0
autocmd vimenter * if !argc() | NERDTree | endif	" open NERDTree if no file is specified
map <C-n> :NERDTreeToggle<CR>	" toggle NERDTree


"""" GUNDO
nnoremap <F5> :GundoToggle<CR>


"""" GENERAL
set autoindent smartindent      " smarter indent behavior
set smarttab                    " make tab and backspace smarter
set nowrap                      " don't wrap long lines
set number                      " display line numbers
set hlsearch                    " highlight search matches
set backspace=indent,eol,start  " allow backspace over indent, eol, start
set formatoptions=tcqlron       " auto-wrap lines/comments at textwidth,
                                " allow formatting using gq commands,
                                " long lines not broken in insert mode
                                " auto-insert comment leader on Enter or O,
                                " recognize numbered lists
				
""" Syntax
"set foldmethod=syntax           " syntax-based code folding

""" Shortcuts
" scroll forward one screen
nmap <space> <c-f>
" scroll backward one screen
nmap <bs> <c-b>
" cycle between split windows
nmap - <c-w>w
" toggle search highlighting
nmap th :set hlsearch!<cr>
" toggle code folding
nmap tf :set foldenable!<cr>

""" Spacing
" 4 Spaces (2 spaces instead of tabs)
set tabstop=4      " tab this width of spaces
set shiftwidth=4   " indent this width of spaces

""" Colorscheme
" Uncomment the one you want
colorscheme wombat
"colorscheme grb256
"colorscheme codeschool
"colorscheme distinguished
"colorscheme jellybeans
