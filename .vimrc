"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Vundle
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set nocompatible              " be iMproved, required
 filetype off                  " required
 
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 
 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

 " vim plugins
 Plugin 'scrooloose/nerdtree'
 Plugin 'gko/vim-coloresque'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'tpope/vim-surround'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'prettier/vim-prettier'
 Plugin 'vim-scripts/phpfolding.vim'
 Plugin 'vim-syntastic/syntastic'
 Plugin 'itchyny/lightline.vim'
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'dense-analysis/ale'
 
 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Vim Customization for Web Dev
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Open NERDTree when vim command is used with no file specified
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
