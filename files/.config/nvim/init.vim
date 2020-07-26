call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'lilydjwg/colorizer'
Plug 'valloric/MatchTagAlways'
Plug 'mhinz/vim-signify'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'sheerun/vim-polyglot'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'ludovicchabant/vim-gutentags'

" Themes:
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-vividchalk'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'whatyouhide/vim-gotham'

call plug#end()


" Plugins configuration--------------------------------------------------------

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Gutentags configuration
" set statusline+=%{gutentags#statusline()}
" let g:gutentags_ctags_exclude = ['venv', 'env']

" Ultisnips configuration:
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsJumpForwardTrigger="<C-m>"

" NERDTree configuration:
map <C-n> :NERDTreeToggle<CR>

" FZF configuration must be after the leader key binding because there are
" mappings with leader (Search it in 'My mappings' down below)

" Colorizer configuration:
"No mapping for this plugin
let g:colorizer_nomap = 1
"Deactivates if buffers gets more than 1000 lines
let g:colorizer_maxlines = 1000

" Rainbow Parentheses configuration:
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses

" vim-highlightedyank configuration:
let g:highlightedyank_highlight_duration = 1000

" End of Plugins configuration-------------------------------------------------


" My configurations------------------------------------------------------------

" Syntax highlighting for different languages
syntax on
" Detection, general rules and indentation rules for filetypes
filetype plugin indent on
" Enable both line numbers and relative numbers
set number relativenumber
" Highlights the current line
set cursorline
" Enable true colors (Just with terminal emulator compatible)
set termguicolors
"Add vertical line at line 80
set colorcolumn=80
" Suggest recursive files when tab completion in command mode
set path+=**
" Leader key for extra actions
let mapleader=" "
" Minimun window size
" set winwidth=85
" Case insensitive search unless type a capital letter
set ignorecase smartcase
" Size of tabs in spaces (visually)
set tabstop=4
" Amount of spaces inserted in insert mode
set softtabstop=4
" Size of tabs in spaces when indent with '<', '>' or '='
set shiftwidth=4
" Insert spaces instead of tabs
set expandtab
" Auto indent in new lines
set autoindent
" Split below as default when horizontal split
set splitbelow
" Split right as default when vertical split
set splitright
" Highlight the open/close symbol when the cursor is over it
set matchpairs+=<:>
" ?
set inccommand=nosplit
" Allows to undo even if the file has been closed
set undofile
" Mouse support for scrolling
set mouse=a
" Default encoding for files
set encoding=UTF-8
" Automatically yanks and pastes from system clipboard
set clipboard=unnamedplus
" Disables autocomment
autocmd FileType * setlocal formatoptions-=cro
" How to display hidden chars with 'set list'
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
" How to display list of options
set wildmode=longest,list
" For python support in virtual environments
let g:python3_host_prog = expand('~/.venvs/venv/bin/python3')

" Themes configuration:
" colorscheme base16-grayscale-dark
" colorscheme base16-grayscale-light
" colorscheme base16-icy
" colorscheme base16-spacemacs
" colorscheme base16-solarflare
" colorscheme base16-seti
" colorscheme base16-darktooth
" colorscheme base16-brewer
" colorscheme base16-cupertino
" colorscheme base16-google-dark

" colorscheme vividchalk
" colorscheme jellybeans
" colorscheme onedark
colorscheme nord

" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox

" colorscheme gotham
" let g:gotham_airline_emphasised_insert = 0

" End of My configurations-----------------------------------------------------


" My functions-----------------------------------------------------------------

" Sets inital state for the function
let s:is_transparent = 1

" Sets configuration to show correct transparency if terminal allows it and
" it's enabled
function! ToggleTransparent()
    if s:is_transparent
        hi! Normal guibg=NONE ctermbg=NONE
        hi! NonText guibg=NONE ctermbg=NONE
        hi! LineNr guibg=NONE ctermbg=NONE
        hi! FoldColumn guibg=NONE ctermbg=NONE
        hi! Folded guibg=NONE ctermbg=NONE
        hi! SignColumn guibg=NONE ctermbg=NONE
        let s:is_transparent = 0
    else
        set background=dark
        let s:is_transparent = 1
    endif
endfunction

" call ToggleTransparent()

" End of My functions----------------------------------------------------------


" My mappings------------------------------------------------------------------

" Exit from insert mode
inore jj <Esc>

" Stop highlighting search
noremap <leader><leader> :noh<CR>

" Resize windows horizontally
nnoremap <silent> <Leader>+ <C-W>10>
nnoremap <silent> <Leader>- <C-W>10<

" Mapping for easy exit of terminal mode
tnoremap <Esc> <C-\><C-n>

" Mapping for easy replace all ocurrences under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Use Y instead y$ to copy to end of line
nnoremap <silent> Y y$

" Easy move through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" FZF plugin configuration
nmap <Leader>f :Files<CR>
nmap <Leader>F :GFiles<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>a :Ag<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>c :Colors<CR>

" End of My mappings-----------------------------------------------------------
