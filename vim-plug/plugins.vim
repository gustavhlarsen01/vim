" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    "gruvbox theme
    Plug 'gruvbox-community/gruvbox' 
"    Plug 'morhetz/gruvbox'
	Plug 'ful1e5/onedark.nvim'
 
	" Shows undo tree as a gui
	Plug 'mbbill/undotree'

    " quoting/parenthesizing made simple
    Plug 'tpope/vim-surround'

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

call plug#end()
