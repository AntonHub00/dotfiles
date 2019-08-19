" Begin Vundle =========================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'mattn/emmet-vim'
Plugin 'christophermca/meta5'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tpope/vim-vividchalk'

call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle =========================================================

"Basic configuration =======================================================

syntax enable
set number
set relativenumber
"set linebreak
set cursorline
let mapleader=","
set hlsearch
set incsearch
set wildmenu
"set wildmode=list:longest,full
set foldmethod=indent
set foldminlines=0
set foldcolumn=1
set foldlevel=99
set colorcolumn=80

"Recursive search in opened directory
set path+=**

"This is original path
"set path=.,/usr/include,,,**

"End of Basic configuration =================================================

"Themes configuration =======================================================

let g:airline_theme='murmur'

set background=dark
"set background=light

colorscheme jellybeans
"colorscheme vividchalk

"if (empty($TMUX))

"    if (has("termguicolors"))
"        set termguicolors
"    endif


"else

"    colorscheme jellybeans

"    "colorscheme palenight "4
"    "colorscheme base16-grayscale-dark "?
"    "colorscheme base16-grayscale-light "?
"    "colorscheme base16-materia "?
"    "colorscheme base16-phd "?
"    "colorscheme base16-nord "?
"    "colorscheme base16-material-lighter "?
"    "colorscheme molokai "5
"    "colorscheme PaperColor "3
"    "colorscheme base16-solarflare "5
"    colorscheme base16-spacemacs "5
"    "colorscheme base16-seti "?
"    "colorscheme base16-icy "?
"    "colorscheme onehalfdark "3
"    "colorscheme jellybeans "3
"    "colorscheme skittles_berry "4.5
"    "colorscheme meta5
"    "colorscheme tender
"    "colorscheme lucario
"    "colorscheme paintbox "3.5
"    "colorscheme h80
"    "colorscheme doorhinge
"    "colorscheme GetFresh
"    "colorscheme ViZuki
"    "colorscheme DotShare
"    "colorscheme NuColors
"    "colorscheme Thinkpad
"    "colorscheme gruvbox

"endif


"End of Themes configuration ================================================

"Mappings ===================================================================

"For move through wrapped lines (comment this if troubles)
"noremap <silent> k gj
"noremap <silent> l gk

" Map space key (in normal mode) to deactivate Highlight in search
noremap <Space> :noh<CR>

" For resize vertical windows
nnoremap <silent> <Leader>+ <C-W>10>
nnoremap <silent> <Leader>- <C-W>10<

"Set minimum window width of the focused window
set winwidth=85

" To get out of insert mode
inore jj <Esc>

" NERDtree mappings
map <C-n> :NERDTreeToggle<CR>

" Snippet to replace globally with confirmation
cmap ;r %s///gc<Left><Left><Left><Left>

imap <leader>' ''<Esc>i
imap <leader>" ""<Esc>i
imap <leader>( ()<Esc>i
imap <leader>[ []<Esc>i
imap <leader>{ {}<Esc>i
imap <leader>{{ {{  }}<Esc>jji
imap <leader>$ $$<Esc>i
imap <leader>% %%<Esc>i
imap <leader>< <><Esc>i
imap <leader><< <<<<<Esc>ji
imap <leader>/* /**/<Esc>ji
imap <leader>""" """"""<Esc>jji
imap <leader>* **<Esc>i
imap <leader>** ****<Esc>ji
imap <leader>_ __<Esc>i
imap <leader>__ ____<Esc>ji
imap <leader>\| \|  \|<Esc>ji
imap <leader>? ??<Esc>i
imap <leader>pt <?php ; ?><Esc>jjji

"End of Mappings ============================================================

"Notes for '.vim' ===========================================================

" 'ftplugin' contains configs for an specific filetype (I use this for
"compile/run configs, so I can compile/run without leave VIM).

"End of Notes for '.vim' ====================================================
