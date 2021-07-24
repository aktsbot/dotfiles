" auto-install vim-plug - package manager
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'digitaltoad/vim-pug'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " linting
    Plug 'dense-analysis/ale'
    " Fuzzy find files
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Change project root when I switch
    Plug 'airblade/vim-rooter'
    " snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
call plug#end()

" default options
set completeopt=menu,menuone,noselect " better autocomplete options
set mouse=a " if I accidentally use the mouse
set number relativenumber " show relative line numbers
set ignorecase " search case insensitive
set smartcase " search via smartcase
set incsearch " search incremental
set diffopt+=vertical " starts diff mode in vertical split
set shortmess+=c " don't need to press enter so often
set signcolumn=yes " add a column for sings (e.g. GitGutter, LSP, ...)
set updatetime=520 " time until update
filetype plugin indent on " enable detection, plugins and indents
let mapleader = "\<Space>" " space as leader key

let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown
nnoremap <leader>v :e $MYVIMRC<CR>

set title " Change window title when opening files
set hidden " Required to keep multiple buffers open multiple buffers
set nowrap " Display long lines as just one line
set encoding=utf-8 " The encoding displayed
set pumheight=10 " Makes popup menu smaller
set fileencoding=utf-8 " The encoding written to file
set ruler " Show the cursor position all the time
set cmdheight=1 " 1 for commands. More space for displaying messages
set iskeyword+=- " treat dash separated words as a word text object"
set splitbelow " Horizontal splits will automatically be below
set splitright " Vertical splits will automatically be to the right
"set t_Co=256  " Support 256 colors
"set termguicolors " 24m colors
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
set noshowmode " We don't need to see things like -- INSERT -- anymore
set nobackup " This is recommended by coc
set nowritebackup " This is recommended by coc
set updatetime=300 " Faster completion
set timeoutlen=500 " By default timeoutlen is 1000 ms
set formatoptions-=cro " Stop newline continution of comments
set clipboard=unnamedplus " Copy paste between vim and everything else
set colorcolumn=80 " Show where the 80 char limit is
set undofile " persists undo tree
set undodir=~/.vim/undodir " where to put undo files
set undofile " make undo files in the above dir
"set autochdir " Your working directory will always be the same as your working directory
set modelines=0 " security
set noswapfile " dont create .swp files everywhere

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

" fzf
" find my project root when searching for files
if executable('rg')
    let g:rg_derive_root='true'
endif
" Ctrl+p will give me a file search
nnoremap <C-p> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>

" ale settings
" standard-prettier
autocmd Filetype javascript setlocal sw=2 sts=2 expandtab
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'json': ['jq']}
let g:ale_linters = {'javascript': ['standard']}
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

" nerdtree
nnoremap <F6> :NERDTreeToggle<CR>

" theming
" TODO: flesh these out as you progress
colorscheme ron
hi Comment cterm=italic ctermfg=243
hi Constant ctermfg=6
hi String ctermfg=12
hi Function ctermfg=197
hi Identifier ctermfg=81 cterm=none
hi Todo            ctermfg=196 ctermbg=226 cterm=bold
hi ColorColumn ctermbg=233
hi Pmenu        ctermfg=white ctermbg=4 cterm=none
hi PmenuSel     ctermfg=white ctermbg=6 cterm=bold 
hi PmenuSbar    ctermbg=grey
hi PmenuThumb   ctermbg=white
hi PreProc      ctermfg=213
hi SignColumn    ctermfg=241 ctermbg=none
hi Cursor       ctermfg=66 ctermbg=222
hi CursorLine   ctermbg=233 cterm=none
hi LineNr        ctermfg=241 ctermbg=233
hi Visual        ctermbg=235 cterm=none
hi TabLine        ctermfg=244 ctermbg=233 cterm=none
hi TabLineFill    ctermfg=244 cterm=none
hi TabLineSel    ctermfg=232 ctermbg=244 cterm=none
hi VertSplit cterm=none ctermfg=243 ctermbg=237
hi WarningMsg cterm=none ctermfg=209 ctermbg=none
hi Search ctermfg=197  ctermbg=053  cterm=none
hi SpellBad ctermbg=darkred
hi FoldColumn      ctermfg=67   ctermbg=233 cterm=none
hi Folded          ctermfg=240  ctermbg=235 cterm=bold
hi DiffAdd       ctermbg=4 
hi DiffChange    ctermbg=5 
hi DiffDelete    ctermfg=8 ctermbg=6 
hi DiffText      cterm=bold ctermbg=darkred 

hi StatusLine ctermfg=231 ctermbg=237 cterm=none
hi StatusLineNC ctermfg=16 ctermbg=237 cterm=none

" Change status line background color based on mode.
autocmd InsertLeave * highlight StatusLine ctermfg=231 ctermbg=237 cterm=none
autocmd InsertEnter * highlight StatusLine ctermfg=231 ctermbg=darkgreen cterm=bold
