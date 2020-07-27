call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'valloric/MatchTagAlways'
Plug 'mhinz/vim-signify'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'sheerun/vim-polyglot'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/fzf', { 'dir': '~/Software/repos/fzf', 'do': './install --key-bindings --no-completion --update-rc --no-bash --no-fish' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Themes:
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-vividchalk'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'whatyouhide/vim-gotham'

call plug#end()


" My configurations------------------------------------------------------------

" Function related
syntax enable " Syntax highlighting for different languages
let mapleader=" " " Leader key for extra actions
set tabstop=4 " Size of tabs in spaces (visually)
set softtabstop=4 " Amount of spaces inserted whe 'tab' in insert mode
set shiftwidth=4 " Size of tabs in spaces when indent with '<', '>' or '='
set expandtab " Inserts spaces instead of tabs
set smarttab " Smart tabs using tab settings set by me
set autoindent " Auto indent in new lines
set smartindent " Better indentation rules for c-like languages (C, C++, C#, Java, JS, etc.)
set splitbelow " Split below as default when horizontal split
set splitright " Split right as default when vertical split
set matchpairs+=<:> " Add highlight and jump motion with '%' for '<' and '>'
set mouse=a " Mouse support

" Visual related
set number relativenumber " Enables both line numbers and relative numbers
set cursorline " Highlights the current line
set termguicolors " Enables true colors (Just with terminal emulator compatible)
set colorcolumn=80 " Adds vertical line at line 80
set ignorecase smartcase " Case insensitive search unless type a capital letter
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:» " How to display hidden chars with 'set list'
set wildmode=longest,list " How to display list of options

" File related
set encoding=utf-8 " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
set clipboard=unnamedplus " Automatically yanks and pastes from system clipboard
set formatoptions-=cro " Disables autocomment in new line
set updatetime=100 " Delay before vim writes its swap file (good for vim-signify)
set nobackup " Do not make a backup before overwriting a file
set nowritebackup " Do not make a backup before overwriting a file.
set undofile " Allows to undo even if the file has been closed
let g:python3_host_prog = expand('~/.venvs/venv/bin/python3') " For python support in virtual environments

" End of My configurations-----------------------------------------------------


" Plugins configuration--------------------------------------------------------

" Airline configuration:
let g:airline_powerline_fonts = 1 "Works well with firacode font (no need for powerline fonts)
let g:airline#extensions#tabline#enabled = 1

" Ultisnips configuration:
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsJumpForwardTrigger="<C-m>"

" Rainbow Parentheses configuration:
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses

" nvmim-colorizer configuration:
lua require'colorizer'.setup()

" End of Plugins configuration-------------------------------------------------


" End of My themes-------------------------------------------------------------
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

" End of My themes-------------------------------------------------------------


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

" fzf plugin
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

" nerdtree plugin
map <C-n> :NERDTreeToggle<CR>

" End of My mappings-----------------------------------------------------------
