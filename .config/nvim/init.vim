set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set mouse=a
set nocompatible
set background=dark
set clipboard=unnamedplus
syntax on

call plug#begin()

" STARTUP
Plug 'mhinz/vim-startify'

" LANGUAGE SERVER AND INDENTATION
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TOOLS
Plug 'romgrk/barbar.nvim'
Plug 'preservim/nerdtree'

" FUZZY FINDER
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" DISPLAY INFORMATION
Plug 'itchyny/lightline.vim'

" THEME 
Plug 'kyazdani42/nvim-web-devicons'
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
nnoremap <M-e> :NERDTreeToggle<CR>
nnoremap <M-f><M-e> :NERDTreeFind<CR>

" FLUTTER KEYBINDINGS
" COC KEYBINDINGS
