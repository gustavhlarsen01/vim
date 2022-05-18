"Leader keys
"d: Vim surround
"s: Vim surround
"f: Spell check
"pn: Split screen to duplicate

"Free keys
"n:
"m:
"Q:
"W:
"E:
"R:
"Y:
"H:
"J:
"K:
"L:
"X:
"B:
"N:
"M:


filetype off

call plug#begin('C:\Users\Gustav\AppData\Local\nvim-data\site\autoload')

	"theme
	Plug 'gruvbox-community/gruvbox' 

	"Shows undo tree as a gui
	Plug 'mbbill/undotree'

	"quoting/parenthesizing made simple
	Plug 'tpope/vim-surround'

	"Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

call plug#end()

"Python highlight problem
let python_highlight_all = 1
let python_highlight_space_errors = 0

"plugins
"source C:\Users\Gustav\AppData\Local\nvim\vim-plug\plugins.vim

set encoding=UTF-8

"Vim theme
colorscheme gruvbox
set background=dark

set termguicolors

"Sets how man" " y lines of history VIM has to remember
set history=500

"Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

"Ignore case when searching
set ignorecase

"When searching try to be smart about cases
set smartcase

"Highlight search results
set hlsearch

"Makes search act like search in modern browsers
set incsearch

"Show matching brackets when text indicator is over them
set showmatch

"No annoying sound on errors
set noerrorbells
set novisualbell
"set t_vb=
"set tm=500

"Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

"Use spaces instead of tabs
"set expandtab
"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"Be smart when using tabs ;)
set smarttab

"Auto indent
set ai 
"Smart indent
set si 

"set nowrap "Wrap lines
set wrap linebreak 

"Numbers on the side
set number
set relativenumber

"make nvim only highlight number at the start of a line
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

"keep focus on the line in the middle of the screen
set scrolloff=12

"highlights the error in a column on the side
"set signcolumn=yes

"No highlight after search
set nohlsearch

"keeps files open as buffers, in the background. (So I don't have to worry about saving them.)
set hidden

let g:netrw_browser_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

"Plugin Toggle keys
"Undotree
nnoremap <C-u> :UndotreeToggle<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-m> :FZF<CR>

"Vim Surround
"Surround world
nmap t ysiw
"Surround line
nmap T yss

"Make C replace word under cursor
nnoremap C viwc

"Leader key remapped to space key
let mapleader = " "

"Spell check
nnoremap <leader>f z=

"Tabs
"Switch tab
nnoremap <C-j> :wincmd h<CR>
nnoremap <C-k> :wincmd l<CR>
"Resize tab
nnoremap <silent> <Leader>. :vertical resize +10<CR>
nnoremap <silent> <Leader>, :vertical resize -10<CR>
"Open new tab
nnoremap <leader>pn :wincmd v<CR>

"Makes u (undo) only undo to the mark I set.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

"Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

"Search key
nnoremap - /

"remap {  } jump paragraph up and down
nnoremap J }
nnoremap K {

"Visual mode
vnoremap L $
vnoremap H 0
onoremap L $
onoremap H 0

nnoremap <leader>v <C-v>

nnoremap n $
