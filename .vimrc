filetype plugin indent on
set hidden
set nocompatible              " be iMproved, required
"set showtabline=0
set number
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>
set clipboard=unnamed
filetype off                  " required

let mapleader = ","

"to stop arrow keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"Space act as Enter
map <space> <Enter>

"to start visual mode for selection
map <C-x> viw
"to copy selected portion
map <C-c> y
"to paste copied portion
map <C-v> p

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html

" Git plugin not hosted on GitHub

" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" NerdTree
Plugin 'scrooloose/nerdtree'

"Ctrl+P to search files
Plugin 'kien/ctrlp.vim'

"Auto completion
Plugin 'davidhalter/jedi-vim'

"Ack
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"How can I open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

"Automatic reloadig of vimrc
autocmd bufwritepost .vimrc source %

"tabs / buffers / files management
Plugin 'szw/vim-ctrlspace'

"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
