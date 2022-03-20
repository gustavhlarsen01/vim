"Leader keys
"d: Vim surround
"s: Vim surround


filetype off

"Sets how man" " y lines of history VIM has to remember
set history=500

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

"keep focus on the line in the middle of the screen
set scrolloff=14

"highlights the error in a column on the side
set signcolumn=yes

"No highlight after search
set nohlsearch

"Vim Surround
"Surround world
nmap <leader>d ysiw
"Surround line
nmap <leader>s yss

"Better Y
nnoremap Y Vy

"Makes u (undo) only undo to the mark I set.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

"Search key
nnoremap - /

"remap {  } jump paragraph up and down
nnoremap J }
nnoremap K {
