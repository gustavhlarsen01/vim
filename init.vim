

" Links to parts of the config.
source C:\Users\Gustav\Documents\GitHub\vim\plugged.vim
source C:\Users\Gustav\Documents\GitHub\vim\keybindings.vim
source C:\Users\Gustav\Documents\GitHub\vim\abb.vim

filetype off

"Python highlight problem
let python_highlight_all = 0
let python_highlight_space_errors = 0

set encoding=UTF-8

colorscheme gruvbox
set background=dark
set termguicolors
"hi Normal guibg=NONE ctermbg=NONE

"Sets how man" " y lines of history VIM has to remember
set history=500

"Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

"Highlight search results
set hlsearch
set nohlsearch
set ignorecase
set smartcase
set incsearch

"Show matching brackets when text indicator is over them
set showmatch

set noerrorbells
set novisualbell

"Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile
    
"Use spaces instead of tabs
set expandtab
"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set smarttab

set autoindent
set smartindent

set wrap linebreak 

"make nvim only highlight number at the start of a line
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

set number
set relativenumber

set scrolloff=12

"keeps files open as buffers, in the background. (So I don't have to worry about saving them.)
set hidden

"NERDTree config
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
