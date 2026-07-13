" Vim configuration

" Basic settings
set nocompatible
set number
set relativenumber
set cursorline
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set wrap
set linebreak
set encoding=utf-8
set fileencoding=utf-8
set termguicolors
set background=dark
set mouse=a
set clipboard=unnamedplus
set undofile
set undodir=~/.vim/undodir
set backup
set backupdir=~/.vim/backup
set swapfile
set directory=~/.vim/swap
set history=1000

" Leader key
let mapleader = " "

" Key mappings
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal mode
tnoremap <Esc> <C-\><C-n>

" File type specific
autocmd FileType yaml setlocal ts=2 sw=2 expandtab
autocmd FileType go setlocal ts=4 sw=4 noexpandtab
autocmd FileType terraform setlocal ts=2 sw=2 expandtab
autocmd FileType dockerfile setlocal ts=2 sw=2 expandtab
autocmd FileType markdown setlocal spell

" Plugins (using vim-plug)
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'towolf/vim-helm'
Plug 'ivanjermakov/troubleshoot.vim'

call plug#end()

" Airline theme
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>b :Buffers<CR>
