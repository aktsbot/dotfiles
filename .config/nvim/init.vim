" https://www.jakewiesler.com/blog/getting-started-with-vim
" https://github.com/LunarVim/Neovim-from-scratch


" -- Settings
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus
set shiftwidth=2 tabstop=2 softtabstop=2
set smarttab expandtab
set smartindent
set number relativenumber
set signcolumn=yes
set incsearch
set showtabline=1
set splitbelow
set splitright
set hidden
set scrolloff=8
set undofile
set undodir=~/.config/nvim/undodir
set mouse=a
set ignorecase
set smartcase
set formatoptions-=cro
" dont show mode as lightline displays this
set noshowmode

syntax on
filetype plugin indent on
set colorcolumn=80
set background=dark
set termguicolors
colorscheme ront

" -- Plugins
call plug#begin('~/.config/nvim/plugged')

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Lightline
Plug 'itchyny/lightline.vim'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

call plug#end()

lua require('user')

" remaps
let mapleader = ' '

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <C-p> :Telescope find_files<Cr>

" stray spaces, tabs
set listchars=eol:¬,tab:▸\ ,trail:•,extends:»,precedes:«,conceal:†,nbsp:␣
nmap <leader>l :set list!<CR>

" restore cursor position when reopening a file, except if it's a git commit
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" ; to get :
nnoremap ; :
vnoremap ; :

" Clear higlighting
nnoremap \\ :noh<cr>

let g:netrw_banner=0
let g:netrw_liststyle=3
nnoremap <Leader>e :Lexplore 25<cr>

" filetype preferences
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
autocmd Filetype javascript setlocal sw=2 sts=2 expandtab
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd FileType python setlocal et ts=4 sw=4
autocmd FileType mail setlocal noautoindent
autocmd FileType gmi set wrap linebreak
autocmd FileType yaml setlocal sw=2 ts=2
augroup filetypedetect
  autocmd BufRead,BufNewFile *mutt-*              setfiletype mail
