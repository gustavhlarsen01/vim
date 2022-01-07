" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    "gruvbox theme
"    Plug 'gruvbox-community/gruvbox' 
    Plug 'morhetz/gruvbox'
 
    " Quick find files
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " quoting/parenthesizing made simple
    Plug 'tpope/vim-surround'
    " Vim Training
    Plug 'ThePrimeagen/vim-be-good' 
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Shows undo tree as a gui
    Plug 'mbbill/undotree'
    " File tree
    Plug 'preservim/nerdtree' 

call plug#end()
