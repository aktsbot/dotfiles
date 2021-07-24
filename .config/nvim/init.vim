" ~/.config/nvim/init.vim

set mouse-=a " enable mouse in INSERT mode
set clipboard=unnamedplus " integrate vim copy with system clipboard
set number relativenumber " show relative line numbers
set ignorecase " search case insensitive
set smartcase " search via smartcase
set incsearch " search incremental
set title " Change window title when opening files
set encoding=utf-8 " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
set ruler " Show the cursor position all the time
set conceallevel=0 " So that I can see `` in markdown files
set tabstop=2 " Insert 2 spaces for a tab
set softtabstop=2
set shiftwidth=2 "Change the number of space characters inserted for indentation
set smarttab  " Makes tabbing smarter will realize you have 2 vs 4
set expandtab " Converts tabs to spaces
set smartindent " Makes indenting smart
set autoindent " Good auto indent
set laststatus=2 " Always display the status line
set cursorline " Enable highlighting of the current line
set background=dark " tell vim what the background color looks like
set showtabline=1 " Show tabs when there are 2 files
set nobackup " This is recommended by coc
set nowritebackup " This is recommended by coc
set updatetime=300 " Faster completion
set timeoutlen=500 " By default timeoutlen is 1000 ms
set formatoptions-=cro " Stop newline continution of comments
set colorcolumn=80 " Show where the 80 char limit is
set undofile " persists undo tree
set undodir=~/.vim/undodir " where to put undo files
set undofile " make undo files in the above dir
set noswapfile " dont create .swp files everywhere
set lazyredraw " Don't redraw while executing macros (good performance config)
set noshowmode " We don't need to see things like -- INSERT -- anymore
set modelines=0 " security
set signcolumn=yes " add a column for sings (e.g. GitGutter, LSP, ...)
set iskeyword+=- " treat dash separated words as a word text object"
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

filetype plugin indent on " enable detection, plugins and indents
let mapleader = "\<Space>" " space as leader key

" netrw is the default file browser in vim
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw

" show stray whitespace when I press
" <space> + l
"set listchars=tab:▸\ ,eol:¬,space:.
set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣
nmap <leader>l :set list!<CR>

" restore cursor position when reopening a file, except if it's a git commit
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" when I press ; in normal mode I mean :
nnoremap ; :
vnoremap ; :

" a good status line
set statusline=[%n]\ %<%.99f\ %y%h%w%m%r%=%-14.(%l,%c%V%)\ %P

" preferences for various file formats
autocmd FileType c setlocal noet ts=8 sw=8 tw=80
autocmd FileType h setlocal noet ts=8 sw=8 tw=80
autocmd FileType cpp setlocal noet ts=8 sw=8 tw=80
autocmd FileType go setlocal noet ts=4 sw=4
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType scss setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80 et ts=2 sw=2
autocmd FileType text setlocal tw=80
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4
autocmd FileType mail setlocal noautoindent
autocmd FileType gmi set wrap linebreak
autocmd FileType yaml setlocal sw=2 ts=2
augroup filetypedetect
  autocmd BufRead,BufNewFile *mutt-*              setfiletype mail


" Imports
runtime ./plug.vim
runtime ./keys.vim

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  runtime ./colors/ront.vim
  colorscheme ront
  " minor tweaks on vim's default colorscheme called ron.
  colorscheme ront
endif


" Change status line background color based on mode.
autocmd InsertLeave * highlight StatusLine ctermfg=231 ctermbg=237 cterm=none gui=none guibg=#3a3a3a guifg=#ffffff
autocmd InsertEnter * highlight StatusLine ctermfg=231 ctermbg=darkgreen cterm=bold gui=bold guibg=#005f00 guifg=#ffffff

