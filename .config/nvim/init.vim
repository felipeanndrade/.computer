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
Plug 'preservim/nerdtree'
" FUZZY FINDER
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" DISPLAY 
Plug 'itchyny/lightline.vim'

" THEME 
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
 
" FLUTTER ENVIRONMENT
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

call plug#end()

let g:lightline = {'colorscheme': 'catppuccin'}

if has('termguicolors')
	set termguicolors
endif

colorscheme catppuccin       

" NERD TREE KEYBINDINGS
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f><C-e> :NERDTreeFind<CR>

