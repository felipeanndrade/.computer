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
# TYPING PLUGINS
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'

# DISPLAY INFORMATION PLUGINS
Plug 'itchyny/lightline.vim'

# THEME PLUGINS
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

let g:lightline = {'colorscheme': 'tokyonight'}

if has('termguicolors')
	set termguicolors
endif

colorscheme tokyonight       

