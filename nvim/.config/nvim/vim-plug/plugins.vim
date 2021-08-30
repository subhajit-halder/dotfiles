" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " gruvbox material theme
    Plug 'sainnhe/gruvbox-material'  
    " vim-airline
    Plug 'vim-airline/vim-airline'
    " goyo - distraction free writing
    Plug 'junegunn/goyo.vim'
    " startify - start page 
    Plug 'mhinz/vim-startify'
    " markdown live preview in browser 
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " generate toc for md files
    Plug 'mzlogin/vim-markdown-toc'

call plug#end()
