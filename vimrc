" basic options
set shell=/bin/bash
set clipboard=unnamedplus

set number
set relativenumber
set noerrorbells
set visualbell
set title

inoremap ö <esc>
vnoremap ö <esc>

" Easier window navigation

" Indentation options 
set expandtab
set autoindent
set shiftround
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set splitbelow splitright

set undofile

" Rendering options
set wrap
set linebreak
set scrolloff=2
set sidescrolloff=5
syntax enable

set colorcolumn=80
highlight ColorColumn ctermbg=236 guibg=#262626

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Folding options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

set backspace=indent,eol,start
set formatoptions+=j
set clipboard=unnamedplus

" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'dense-analysis/ale'         " Automatic linting while writing
  Plug 'airblade/vim-gitgutter'     " Shows git diff in left column
  Plug 'morhetz/gruvbox'            " Colorscheme
  Plug 'preservim/nerdtree'         " file navigator
  Plug 'vim-python/python-syntax'   " Improved python syntax highlighting
  Plug 'davidhalter/jedi-vim'       " Language server for python (autocomplete)
  Plug 'ervandew/supertab'          " Use tab for autocomplete
  Plug 'christoomey/vim-tmux-navigator' " Easier movement between tmux and vim
  Plug 'github/copilot.vim' " Github copilot
  Plug 'junegunn/fzf' " Fuzzy finder
call plug#end()

" ALE
set signcolumn=number
let g:ale_virtualtext_cursor = 'current'

" Colorschemes
colorscheme gruvbox
set background=dark
let g:python_highlight_all = 1

" JEDI
let g:jedi#show_call_signatures=1
let g:jedi#auto_initialization=1
let g:jedi#popup_on_dot=1
let g:jedi#smart_auto_mappings = 1
let g:jedi#popup_select_first=0
let g:SuperTabDefaultCompletionType="<c-x><c-o>" " Setting supertab to 'jedi'
autocmd FileType python setlocal completeopt-=preview



