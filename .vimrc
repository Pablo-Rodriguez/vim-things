" --------------------------------- Vundle -----------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" --------------------------------- MyPlugins ------------------------
Plugin 'morhetz/gruvbox'
" nerdcommenter -> http://www.vim.org/scripts/script.php?script_id=1218
Plugin 'scrooloose/nerdcommenter'
" NerdTree -> https://github.com/scrooloose/nerdtree 
Plugin 'scrooloose/nerdtree'
" CtrlP -> https://github.com/ctrlpvim/ctrlp.vim
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

" ------------------------------------- My Config ---------------------------------------


" General, integración con la terminal y el fs
set title
set wildignore=*.o,*~,*.pyc,*/.git,*/.DS_Store
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif
try
	colorscheme gruvbox
	set background=dark
catch
endtry

" Editor
set tabstop=2
set autoindent
set smartindent
set number
set ruler
set scrolloff=7
set so=7
set hlsearch
set incsearch
set backspace=eol,start,indent
" Highlight matching brackets
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Combinaciones de teclas
let mapleader = ','
let g:mapleader = ','
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>n :set number!<CR>

" Interprete de comandos de vim
set history=100
set wildmenu
" Ignore case when searching
set ignorecase
set smartcase
" To use regexps
set magic
" :W to save with sudo
command W w !sudo tee % > /dev/null

" ---------------------- Plugins Config --------------------
" NerdTree
map <C-n> :NERDTreeToggle<CR>
" CtrlP
map <C-p> :CtrlP<CR>
