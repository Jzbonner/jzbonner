""" Vim-Plug
call plug#begin()

" Aesthetics - Main
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'zaki/zazen'

" Aethetics - Additional
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'

" Functionalities
Plug 'sbdchd/neoformat'
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-signify'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-scripts/loremipsum'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'
Plug 'psliwka/vim-smoothie'
Plug 'antoinemadec/FixCursorHold.nvim'

" Entertainment
Plug 'dansomething/vim-hackernews'

call plug#end()

""" Main Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title

"""Formatting
let g:neoformat_try_node_exe = 1

"""Coloring

" Functions and autocmds to run whenever changing colorschemes
function! TransparentBackground()
    highlight Normal guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    set fillchars+=vert:\│
    highlight VertSplit gui=NONE guibg=NONE guifg=#444444 cterm=NONE ctermbg=NONE ctermfg=gray
endfunction

function! DraculaPMenu()
    highlight Pmenu guibg=#363948
    highlight PmenuSbar guibg=#363948
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme tomorrow-night call DraculaPMenu()
    "autocmd ColorScheme * call TransparentBackground() " uncomment if you are using a translucent terminal and you want nvim to use that
augroup END

" Main Coloring Configurations
syntax on
set wrap linebreak
color seoul256 

" Enable True Color Support (ensure you're using a 256-color enabled $TERM, e.g. xterm-256color)
set termguicolors

""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Airline Configuration
let g:airline_theme='seoul256'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tabs_label = 'TABS'
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

set noswapfile
set nobackup
set nowb
set cursorline
set scrolloff=5

" vim-pydocstring
let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_defaultGroup = 'NonText'
" Disable indentLine from concealing json and markdown syntax (e.g. ```)
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" TagBar
let g:tagbar_width = 30

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Constant'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Bat theme for syntax coloring when viewing files in fzf
let $BAT_THEME='base16'

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'gray'

" Startify
let g:startify_fortune_use_unicode = 1

" Startify + NERDTree on start when no file is specified
autocmd VimEnter *
    \   if !argc()
    \ |   Startify
    \ |   NERDTree
    \ |   wincmd w
    \ | endif


" signify
let g:signify_sign_add = '│'
let g:signify_sign_delete = '│'
let g:signify_sign_change = '│'
hi DiffDelete guifg=#ff5555 guibg=none

" FixCursorHold for better performance
let g:cursorhold_updatetime = 100


""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme='dracula'
    color dracula
endfunction

" Seoul256 Mode (Dark & Light)
function! ColorSeoul256()
    let g:airline_theme='silver'
    color seoul256
endfunction

" Forgotten Mode (Light)
function! ColorForgotten()
    " Other light airline themes: tomorrow, silver, alduin
    let g:airline_theme='tomorrow'
    " Other light colors: forgotten-light, nemo-light
    color forgotten-light
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
    let g:airline_theme='minimalist'
    color zazen
endfunction

""" Custom Mappings

let mapleader=","
nmap <leader>$s <C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>
nmap <leader>$v <C-w>v<C-w>l:terminal<CR>:set nonumber<CR><S-a>
nmap <leader>fd :Neoformat<CR>
nmap <leader>q :NERDTreeToggle<CR>
nmap \\ <leader>q
nmap <leader>w :TagbarToggle<CR>
nmap \| <leader>w
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorForgotten()<CR>
nmap <leader>e4 :call ColorZazen()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>y <C-w>v<C-w>l:HackerNews best<CR>J
nmap <leader>p <Plug>(pydocstring)
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s :Rg<CR>
nmap <leader>d :Files<CR>
nmap <leader>f :BLines<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
