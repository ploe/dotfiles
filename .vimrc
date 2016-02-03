nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nu
set nocompatible
filetype off
filetype plugin indent on

au FileType puppet setlocal shiftwidth=2 tabstop=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'markcornick/vim-vagrant'
Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
