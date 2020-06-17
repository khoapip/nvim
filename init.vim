set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin("~/.config/nvim/bundle")
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

" Plugin 'dracula/vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
Plugin 'mbbill/undotree'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'python-mode/python-mode'
Plugin 'itchyny/lightline.vim'
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
let g:python3_host_prog='/home/pi/miniconda3/envs/pynvim/bin/python3'

let $VIRTUAL_ENV = $CONDA_PREFIX
let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
let mapleader = " "
let g:airline#extensions#tabline#enabled = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:airline_theme='fruit_punch'

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>k" 
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:startify_bookmarks = ["~/.config/nvim/init.vim","~/.tmux.conf.local", "~/.zshrc"]
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
set mouse=a

syntax on               " syntax highlighting

syntax enable
" Auto close bracket
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
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
nnoremap <leader>H :wincmd H<CR>
nnoremap <leader>J :wincmd J<CR>
nnoremap <leader>K :wincmd K<CR>
nnoremap <leader>L :wincmd L<CR>
noremap <leader>u :UndotreeShow<CR>
nnoremap <leader>- :wincmd s<CR>
nnoremap <leader>\ :wincmd v<CR>
map <F6> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-p> :TmuxNavigatePrevious<cr>
noremap <F4> :set hlsearch! hlsearch?<CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>



