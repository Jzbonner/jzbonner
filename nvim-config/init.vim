call plug#begin('C:\Users\Jzbonner\AppData\Local\nvim\plugged')
"" installed plugins
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"" initial appearance options
syntax on
set t_Co=256
set cursorline
set number
set wrap linebreak
colorscheme onehalfdark 
let g:airline_theme='bubblegum'

"" airline initial configuration
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" airline theme configuration
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = "%3p%% %l:%c"
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

"" keymappings 
nmap <F2> :NERDTreeToggle<CR>
