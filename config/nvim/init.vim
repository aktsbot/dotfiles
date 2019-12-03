"
" defaults for everything
"
set laststatus=2
set ignorecase
set ruler
set showmode
set smartcase

let mapleader = "\<space>"

set splitbelow
" show empty white spaces
set encoding=utf-8
"set listchars=trail:·
set listchars=tab:▸\ ,eol:¬,space:.
"set list
nmap <leader>l :set list!<CR>

set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()

filetype plugin indent on

set laststatus=2
" exit without Shift + ;
nnoremap ; :
vnoremap ; :
" use system clipboard
set clipboard=unnamedplus
" 80 chars/line
set textwidth=0
set colorcolumn=80
" Keep the cursor on the same column
set nostartofline

" tabs -> 1 tab = 2 space
set tabstop=2
set shiftwidth=2
set expandtab smarttab

" Annoying temporary files
set backupdir=/tmp//,.
set directory=/tmp//,.
if v:version >= 703
  set undodir=/tmp//,.
endif

" remove trailing whitespace when I need
function! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction

" configure netrw like nerdtree, opened with :Vex
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20 "str2nr(system('expr $COLUMNS - 81'))
let g:netrw_browse_split = 4
let g:netrw_list_hide = '\.(o|pyc)$'

" minor color config
set background=dark
set t_Co=256
syntax enable
colorscheme ron
highlight Search ctermbg=12
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey
highlight clear SignColumn
highlight Comment cterm=italic ctermfg=darkgrey
highlight StatusLine cterm=none ctermbg=none ctermfg=darkgrey
highlight StatusLineNC cterm=none ctermbg=none ctermfg=darkgrey
highlight Title cterm=none ctermfg=darkgrey
highlight TabLineFill cterm=none
highlight TabLine cterm=none ctermfg=darkgrey ctermbg=none
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey
highlight jsParensError ctermbg=NONE



