"
" $HOME/.vimrc or $HOME/.config/nvim/init.vim
"

set noerrorbells " dont make any sounds in esc mode
set tabstop=2 softtabstop=2 " a tab is 4 spaces
set shiftwidth=2 " when I hit enter for a fn defn for ex, make the next line indented by 4 chars
set expandtab " convert tabs to spaces
set smartindent " try to figure out indentation based on file type
set nowrap " dont wrap, show a long line as it is
set smartcase " dont use case sensitive search, unless I search for something with caps
set noswapfile " dont create little .swp files everywhere
set nobackup " dont create backup files
set undodir=~/.vim/undodir " where to put undo files
set undofile " make undo files in the above dir
set incsearch " search as I type

set colorcolumn=80 " tell me where 80 char limit is

set laststatus=2 " show status line
let mapleader = "\<space>" " set leader key to spacebar

" show stray whitespace when I press
" <space> + l
set listchars=tab:▸\ ,eol:¬,space:.
nmap <leader>l :set list!<CR>

" initialize plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'nanotech/jellybeans.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" use the default colorscheme that
" comes with vim + a little extra
set background=dark
syntax on
colorscheme nord
"colorscheme ron
"highlight Comment cterm=italic ctermfg=darkgrey
"highlight ColorColumn ctermbg=darkgrey guibg=lightgrey

" find my project root when searching for files
if executable('rg')
    let g:rg_derive_root='true'
endif

" Ctrl+p will give me a file search
" use .gitignore to prevent searching in unwanted files and folders
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0 " dont cache for files. rg is fast enough 

" this is the default file listing that 
" comes with vim
let g:netrw_browse_split = 2 " the styling
let g:netrw_banner = 0 " no help text
let g:netrw_winsize = 20 " size of the file pane

" when I press ; in normal mode
" I mean :
nnoremap ; :
vnoremap ; :

" use system clipboard
set clipboard=unnamedplus

" remove trailing whitespace when I need
function! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction

" sane navigation in panes
" <space> + hjkl
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" show file listing to my left side
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" show file search
nnoremap <Leader>ps :Rg<SPACE>
" resize file listing pane
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
