call plug#begin('C:\Users\Gustav\AppData\Local\nvim-data\site\autoload') 

    "Theme
    Plug 'gruvbox-community/gruvbox'

    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
	Plug 'sheerun/vim-polyglot' " Syntax highlight
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

call plug#end()
