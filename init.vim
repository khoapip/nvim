set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin("~/.config/nvim/bundle")
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

" Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
"Plugin 'python-mode/python-mode'
Plugin 'itchyny/lightline.vim'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'majutsushi/tagbar'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required



colorscheme gruvbox
set background=dark
set number
set relativenumber
set encoding=utf-8
let $VIRTUAL_ENV = $CONDA_PREFIX
set autoindent
set smartindent
let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0

