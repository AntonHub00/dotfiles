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
Plug '~/Software/repos/fzf' " Manually installed because I also use it outside Neovim
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'unblevable/quick-scope'

" Themes:
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-vividchalk'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'mhartington/oceanic-next'

call plug#end()


" General settings-------------------------------------------------------------

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
set matchpairs+=<:> " Add highlight and jump motion with '%'
set mouse=a " Mouse support
set hidden " Allows to hide buffer even if is not saved to disk yet (also CoC requiement)
set nowrap " Long lines are scrollable

" Visual related
set number relativenumber " Enables both line numbers and relative numbers
" set cursorline " Highlights the current line
set termguicolors " Enables true colors (Just with terminal emulator compatible)
set colorcolumn=80 " Adds vertical line at line 80
set ignorecase smartcase " Search case insensitive search unless type a capital letter
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:» " How to display hidden chars with 'set list'
set wildmode=longest:full,full " How to display list of options
set signcolumn=yes " Always shows sign column (also CoC requiement)
set shortmess+=c " Don't pass messages to ins-completion-menu (also CoC requiement)

" File related
set encoding=utf-8 " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
set clipboard=unnamedplus " Automatically yanks and pastes from system clipboard
autocmd FileType * setlocal formatoptions-=cro " Disables autocomment in new line
set updatetime=100 " Delay before vim writes its swap file (good for vim-signify) (also CoC requiement)
set nobackup " Do not make a backup before overwriting a file (also CoC requiement)
set nowritebackup " Do not make a backup before overwriting a file (also CoC requiement)
set undofile " Persistent undo
let g:python3_host_prog = expand('~/.venvs/general/neovim/bin/python3') " For python support in virtual environments

" End of General settings-------------------------------------------------------


" Plugins configuration--------------------------------------------------------

" fzf configuration:

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Normal'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" quick-scope configuration:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#00ff00' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ffff00' gui=underline ctermfg=81 cterm=underline
augroup END

" nerdtree-git-plugin configuration:-------------------------------------------
let g:NERDTreeGitStatusUseNerdFonts = 1

" Airline configuration:-------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" End of Airline configuration-------------------------------------------------

" Rainbow Parentheses configuration:-------------------------------------------
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
autocmd FileType * RainbowParentheses
" End of Rainbow Parentheses configuration------------------------------------

" nvmim-colorizer configuration:-----------------------------------------------
lua require'colorizer'.setup()
" End of nvmim-colorizer configuration-----------------------------------------

" COC configuration:-----------------------------------------------------------

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Confirm selection, expand snippet or just tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand',''])\<CR>" :
      \ "\<TAB>"

" Add :Format command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add :OrganizeImports command for organize imports of the current buffer.
command! -nargs=0 OrganizeImports :call CocAction('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList
nnoremap <silent><nowait> <leader>cld :<C-u>CocList diagnostics<cr> " Show all diagnostics
nnoremap <silent><nowait> <leader>cle :<C-u>CocList extensions<cr> " Manage extensions
nnoremap <silent><nowait> <leader>clc :<C-u>CocList commands<cr> " Show commands
nnoremap <silent><nowait> <leader>clo :<C-u>CocList outline<cr> " Find symbol of current document
nnoremap <silent><nowait> <leader>cls :<C-u>CocList -I symbols<cr> " Search workspace symbols

" Other useful mappings
nmap <silent> <leader>cgd <Plug>(coc-definition)
nmap <silent> <leader>cgt <Plug>(coc-type-definition)
nmap <silent> <leader>cgi <Plug>(coc-implementation)
nmap <silent> <leader>cgr <Plug>(coc-references)
nmap <leader>cf :Format<cr>
nmap <leader>co :OrganizeImports<cr>
nmap <leader>cr <Plug>(coc-rename)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh() " Trigger completion
" Use K to show documentation in preview windows (if available).
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" End of COC configuration-----------------------------------------------------

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
" let g:gruvbox_contrast_light = 'hard'
" let g:gruvbox_bold = 1
" let g:gruvbox_italic = 1
" let g:gruvbox_underline = 1
" let g:gruvbox_undercurl = 1
" let g:gruvbox_italicize_comments = 1
" let g:gruvbox_invert_selection = 0
" colorscheme gruvbox

" colorscheme gotham
" let g:gotham_airline_emphasised_insert = 0

" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext

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

" Easy exit from insert mode
inore jj <Esc>

" Stop highlighting search
noremap <leader><leader> :noh<CR>

" Resize windows horizontally
nnoremap <silent> <Leader>rl 10<C-W>>
nnoremap <silent> <Leader>rh 10<C-W><
nnoremap <silent> <Leader>rk 5<C-W>+
nnoremap <silent> <Leader>rj 5<C-W>-

" Mapping for easy exit of terminal mode
" tnoremap <Esc> <C-\><C-n>

" Mapping for easy replace all ocurrences under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Copy till the end of the line
nnoremap <silent> Y y$

" Easy move through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" fzf plugin
nmap <Leader>ff :Files<CR>
nmap <Leader>fF :GFiles<CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>fh :History<CR>
nmap <Leader>fH :History:<CR>
nmap <Leader>fl :BLines<CR>
nmap <Leader>fL :Lines<CR>
nmap <Leader>fa :Ag<Space>
nmap <Leader>fr :Rg<Space>
nmap <Leader>fc :Commands<CR>
nmap <Leader>fC :Colors<CR>
nmap <Leader>fm :Maps<CR>
nmap <Leader>ft :Filetypes<CR>

" nerdtree plugin
map <C-n> :NERDTreeToggle<CR>

" End of My mappings-----------------------------------------------------------
