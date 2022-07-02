" This is my vim keybindings.

" Get char under cursor
fun! Getchar()
  return strcharpart(strpart(getline('.'), col('.') - 1), 0, 1)
endfun


"			LEADER KEYS

let mapleader = " "

" Start Fuzzy Finder
map <leader>fj :Files<CR>

"Buffers
map <leader>bj :Buffers<CR>
map <leader>bk :bdelete<CR>

"Explore
map <leader>ej :Ex<CR>

" Move Windwos
map <leader>h :winc h<CR>
map <leader>l :winc l<CR>
map <leader>k :winc k<CR>
map <leader>j :winc j<CR>
" Split window
map <leader>sl :vsplit<CR>
map <leader>sk :split<CR>


"			INSERT MODE

" Makes u (undo) only undo to the mark I set.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
