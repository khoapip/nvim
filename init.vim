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
Plugin 'mbbill/undotree'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'python-mode/python-mode'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'majutsushi/tagbar'
Plugin 'preservim/nerdcommenter'

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
let g:airline#extensions#tabline#buffer_nr_show = 1
let $VIRTUAL_ENV = $CONDA_PREFIX
let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
let mapleader = " "
let g:airline#extensions#tabline#enabled = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:airline_theme='fruit_punch'
let g:airline#extensions#tabline#buffer_nr_show = 1
" --------------------------------------------------------------------------------
set hidden
set background=dark
set number
set relativenumber
set encoding=utf-8
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set showcmd             " show (partial) command in status line
set pastetoggle=<F2>
" make backspaces more powerful
set backspace=indent,eol,start
set ruler                           " show line and column number
set showtabline=2

syntax on               " syntax highlighting

syntax enable
" Auto close bracket
inoremap " ""<left>
inoremap < <><left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
:vnoremap < <gv
:vnoremap > >gv
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
noremap <leader>u :UndotreeShow<CR>
nnoremap <leader>- :wincmd s<CR>
nnoremap <leader>\ :wincmd v<CR>
map <F6> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>


