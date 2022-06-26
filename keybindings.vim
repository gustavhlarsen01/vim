" This is my vim keybindings.

" Get char under cursor
fun! Getchar()
  return strcharpart(strpart(getline('.'), col('.') - 1), 0, 1)
endfun


"			LEADER KEYS

let mapleader = " "
" Spell checker.
map <leader>fs z=
" Start Fuzzy Finder
map <leader>fzf :Files<CR>
" Move Windwos
map <leader>h :winc h<CR>
map <leader>l :winc l<CR>
map <leader>k :winc k<CR>
map <leader>j :winc j<CR>
" Split window
map <leader>nv :vsplit<CR>
map <leader>nh :hsplit<CR>
" Toggle NERDTree on and off
map <leader>ntt :NERDTreeToggle<CR>
map <leader>ntc :NERDTree C:\Users\Gustav\Documents<CR>


"			INSERT MODE

" Makes u (undo) only undo to the mark I set.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

