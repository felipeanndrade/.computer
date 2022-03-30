set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set mouse=a
set nocompatible
set background=dark
syntax on

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

let g:lightline = {'colorscheme': 'tokyonight'}

if has('termguicolors')
	set termguicolors
endif

colorscheme tokyonight       

