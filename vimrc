#
#        _           
# __   _(_)_ __ ___  
# \ \ / / | '_ ` _ \ 
#  \ V /| | | | | | |
#   \_/ |_|_| |_| |_|
#                   


set nocompatible " prefer vim features over vi
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set encoding=utf-8
scriptencoding utf-8

set term=screen-256color

"set autoindent
"set backspace=indent,start,eol

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

set pastetoggle=<f5>

set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" leader is a key that allows you to have your own "namespace" of
" keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

" So we don't have to reach for escape to leave insert mode.
inoremap jf <esc>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>


" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

set cursorline
set number
set relativenumber
            
set laststatus=2

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/landscape.vim'
call plug#end()

" colors
set t_Co=256 " 256 color mode
set background=dark
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1
colorscheme landscape

" give us nice EOL (end of line) characters
"set list
"set listchars=tab:▸\ ,eol:¬

set noshowmode
let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

"let g:lightline = {
"      \ 'colorscheme': 'landscape',
"      \ 'component': {
"      \   'readonly': '%{&readonly?"⭤":""}',
"      \ },
"       \ 'separator': { 'left': '⮀', 'right': '⮂' },
"      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
"      \ }

map <F2> :NERDTreeToggle<CR>

