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
" TYPING PLUGINS
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'

" TOOLS
Plug 'romgrk/barbar.nvim'

" DISPLAY INFORMATION PLUGINS
Plug 'itchyny/lightline.vim'

" THEME PLUGINS
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()

let g:lightline = {'colorscheme': 'catppuccin'}

if has('termguicolors')
	set termguicolors
endif

colorscheme catppuccin       

