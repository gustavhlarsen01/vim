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
map <leader>ff :Files<CR>
" make narrow paragraph
map <leader>ysm :set tw=52<CR>0i<tab><tab><tab><esc>gqq
map <leader>yst 0i<tab><tab><tab><tab><tab><tab><esc>
" Move Windwos
map <leader>h :winc h<CR>
map <leader>l :winc l<CR>
map <leader>k :winc k<CR>
map <leader>j :winc j<CR>
" Split window
map <leader>nv :vsplit<CR>
map <leader>nh :hsplit<CR>
" Toggle NERDTree on and off
map <leader>nt :NERDTreeToggle<CR>


"			INSERT MODE

" Makes u (undo) only undo to the mark I set.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap : :<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u



" function! FunctionTest()
" 	let var1 = Getchar()
" 	if var1 == "v" 
" 		return "rV" 
" 	else
" 		return "rG"
" endfunction
" 
" map <leader>g FunctionTest()

