"                                 ___
"        ___        ___          /__/\
"       /__/\      /  /\        |  |::\
"       \  \:\    /  /:/        |  |:|:\
"        \  \:\  /__/::\      __|__|:|\:\
"    ___  \__\:\ \__\/\:\__  /__/::::| \:\
"   /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
"   \  \:\|  |:|     \__\::/  \  \:\
"    \  \:\__|:|     /__/:/    \  \:\
"     \__\::::/      \__\/      \  \:\
"         ~~~~                   \__\/

set nocompatible " prefer vim features over vi
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set encoding=utf-8
scriptencoding utf-8

set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

"set cursorline
set number
set relativenumber
highlight LineNr ctermfg=black

" Toggle line numbers
" while relativenumber is on, this wont do anything :(
"nnoremap <F2> :set nonumber!<CR>

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/PotatoesMaster/i3-vim-syntax'
Plug 'agude/vim-eldar'
call plug#end()

" colors
set t_Co=256 " 256 color mode
set background=dark
colorscheme eldar

" Turn off modelines
"set modelines=0

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Display options
set showmode
set showcmd
set cmdheight=1

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Set status line display
set laststatus=2

" Encoding
set encoding=utf-8

"Always show current position
set ruler

" Store info from no more than 100 files at a time, 9999 lines of text
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

