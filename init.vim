filetype off

source $HOME/.config/nvim/vim-plug/plugins.vim

"Vim theme
colorscheme gruvbox
set background=dark

"Show Strong color
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
set expandtab

"Be smart when using tabs ;)
set smarttab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"Auto indent
set ai 
"Smart indent
set si 

"set nowrap "Wrap lines
set wrap linebreak 

"Numbers on the side
set number
set relativenumber

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline


set scrolloff=8

"highlights the error in a column on the side
"set signcolumn=yes

"No highlight after search
set nohlsearch

"keeps files open in the backgound, so I don't have to worry about saving it
set hidden
"Plugin Toggle keys
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :UndotreeToggle<CR>
nmap <F4> :VimBeGood<CR>

"Leader key remapped to space key
let mapleader = " "

let g:netrw_browser_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

"Custom Enter key
nnoremap <leader>f z=

"Switch tab
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

"Resize tab
nnoremap <silent> <Leader>+ :vertical resize +10<CR>
nnoremap <silent> <Leader>- :vertical resize -10<CR>

"Open newtab
nnoremap <leader>pv :wincmd v<bar> :NERDTree <bar> <CR> 
nnoremap <leader>pn :wincmd v<CR>

"Better Y
nnoremap Y y$

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
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
