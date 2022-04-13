set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set mouse=a
set nocompatible
set background=dark
set clipboard=unnamedplus
set encoding=UTF-8
set cmdheight=2
syntax on

call plug#begin()

" STARTUP
Plug 'mhinz/vim-startify'
 
" INTEGRATED TERMINAL
Plug 'akinsho/toggleterm.nvim'

" LANGUAGE SERVER AND INDENTATION
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" GIT PLUGINS
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim' 
Plug 'lewis6991/gitsigns.nvim'

" TOOLS
Plug 'romgrk/barbar.nvim'

" NERDTREE
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'PhilRunninger/nerdtree-buffer-ops'

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

" MARKDOWN RELATED
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

let g:lightline = {'colorscheme': 'catppuccin'}

" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set termguicolors
colorscheme catppuccin       

" TELESCOPE KEYBINDINGS
"
nnoremap <M-f><M-f> :Telescope find_files<cr>

" BARBAR KEYBINDINGS
" 
nnoremap <silent>    <M-[> :BufferPrevious<CR>
nnoremap <silent>    <M-]> :BufferNext<CR>

" NERD TREE KEYBINDINGS
nnoremap <M-e> :NERDTreeToggle<CR>
nnoremap <M-f><M-e> :NERDTreeFind<CR>

" INTEGRATED TERMINAL KEYBINDINGS
"
nnoremap <M-t> :ToggleTerm direction=horizontal<cr>

"" FLUTTER KEYBINDINGS
 
" Devices
"
nnoremap <M-f><M-d> :FlutterDevices<cr>
 
" Emulators
"
nnoremap <M-f><M-e> :FlutterEmulatorsLaunch<cr>

" Run
"
nnoremap <M-f><M-r> :FlutterRun<cr> 
nnoremap <M-f><M-q> :FlutterQuit<cr>
nnoremap <M-f><M-r><M-w> :FlutterRun -d chrome<cr>
nnoremap <M-f><M-r><M-e> :FlutterRun -d linux<cr>
" Use a fisical device
nnoremap <M-f><M-r><M-r> :FlutterRun --release<cr> 
nnoremap <M-h><M-r> :FlutterHotRestart<cr>
nnoremap <M-f><M-s> :FlutterVSplit<cr>

" Open visual debuger
"
nnoremap <M-f><M-v> :FlutterVisualDebug<cr>
 
" MARKDOWN KEYBINDINGS
"
nnoremap <M-m> :MarkdownPreview<cr>

" COC KEYBINDINGS
 
" GoTo code navigation.
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" rn to rename
nmap <leader>rn <Plug>(coc-rename)

" Remap keys for applying codeAction to the current buffer.
xmap <M-a>  <Plug>(coc-codeaction-selected)
nmap <M-a>  <Plug>(coc-codeaction-selected)
" Open list of possible fixe
nnoremap <M-q><M-f> :CocFix<cr>
nnoremap <M-c><M-d> :CocList diagnostics<cr>
" COC FUNCTIONS
"
"" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GIT SIGNS FUNCTIONS
