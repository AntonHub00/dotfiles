"Neovim (requirements in Ubuntu 18.04):

"sudo add-apt-repository ppa:neovim-ppa/stable
"sudo apt-get update
"sudo apt-get install neovim


"Vim plug installation (plugin manager):

"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


"Some plugins require python (requirements):

"sudo apt-get install python-dev python-pip python3-dev python3-pip
"python3 -m pip uninstall neovim pynvim
"python3 -m pip install --user --upgrade pynvim


call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'lilydjwg/colorizer'
Plug 'valloric/MatchTagAlways'
Plug 'mhinz/vim-signify'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'sheerun/vim-polyglot' "??????
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

"Themes:
Plug 'chriskempson/base16-vim'
Plug 'iCyMind/NeoSolarized'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'ajmwagar/vim-deus'
Plug 'whatyouhide/vim-gotham'
Plug 'nanotech/jellybeans.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-vividchalk'
"Plug 'rainglow/vim' Still in  Alpha :c (The best)

call plug#end()


"Plugins configuration--------------------------------------------------------

"Deoplete configuration:
let g:deoplete#enable_at_startup = 1

"NERDTree configuration:
map <C-n> :NERDTreeToggle<CR>

"FZF configuration must be after the leader key binding because there mappings
"with leader (Search it in 'My mappings')

"Colorizer configuration:
let g:colorizer_nomap = 1 "No mapping for this plugin
let g:colorizer_maxlines = 1000 "Deactivates if buffers gets more than 1000 lines

"Rainbow Parentheses configuration:
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
au Syntax * RainbowParentheses

"Gutentags configuration:
set statusline+=%{gutentags#statusline()}
let g:gutentags_ctags_exclude= ['env', '.git']

"End of Plugins configuration-------------------------------------------------


"My configurations------------------------------------------------------------

filetype plugin indent on "Detection, general rules and indentation rules for filetypes
set number relativenumber "Enable both line numbers and relative numbers
set cursorline "Highlights the current line
set termguicolors "Enable true colors (Just with terminal emulator compatible)
set colorcolumn=80 "Add vertica line at line 80
set path+=** "Suggest recursive files when tab completion in command mode
let mapleader=" "
set winwidth=85 "Minimun window size
set ignorecase smartcase "Case insensitive search unless type a capital letter
set tabstop=4 "Size of tabs in spaces (visually)
set softtabstop=4 "Amount of spaces inserted in insert mode
set shiftwidth=4 "Size of tabs in spaces when indent with '<', '>' or '='
set expandtab "Insert tabs instead of spaces
set autoindent "Auto indent in new lines
set splitbelow "Split below as default when horizontal split
set splitright "Split right as default when vertical split
set matchpairs+=<:>
set inccommand=nosplit
set undofile

"Themes configuration:
"colorscheme base16-grayscale-dark
"colorscheme base16-grayscale-light
"colorscheme base16-nord
"colorscheme base16-spacemacs "*****
"colorscheme base16-solarflare
"colorscheme base16-seti
"colorscheme base16-icy
"colorscheme base16-material-vivid
" colorscheme base16-brewer
"colorscheme base16-harmonic-dark
"colorscheme base16-cupertino "Good light theme
"colorscheme NeoSolarized
"colorscheme onedark "*****
"colorscheme gruvbox "*****
"colorscheme monokai
"colorscheme deus
"colorscheme gotham "*****
"colorscheme jellybeans "*****
"colorscheme ayu
"colorscheme nord
"colorscheme OceanicNext "*****
colorscheme vividchalk

" End of My configurations-----------------------------------------------------


" My mappings------------------------------------------------------------------

"Exit from insert mode
inore jj <Esc>

"Stop highlighting search
noremap <CR> :noh<CR>

"Resize windows horizontally
nnoremap <silent> <Leader>+ <C-W>10>
nnoremap <silent> <Leader>- <C-W>10<

"Easy command mapping for search and replace strings
cmap ;r %s///gc<Left><Left><Left><Left>

"Mapping for easy exit of terminal mode
tnoremap <Esc> <C-\><C-n>

"Use tab to select when autocompletion window is open
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<cr>"

" FZF configuration
nmap <Leader>f :Files<CR>
nmap <Leader>F :GFiles<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>a :Ag<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>

"Easy move through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" End of My mappings-----------------------------------------------------------
