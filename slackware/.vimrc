"
" A (not so) minimal vimrc.
" https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set ignorecase
set smartcase

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set mouse=
set clipboard=

" Color {{{
"   All coloring options are for the non-GUI Vim (see :help cterm-colors).

" Make listchars (much) more noticable.
au ColorScheme * hi SpecialKey ctermfg=7 ctermbg=1

" Grey-out the statusbar non-current windows.
au ColorScheme * hi StatusLineNC term=reverse cterm=bold ctermbg=8

" A nice, minimalistic tabline.
au ColorScheme * hi TabLine cterm=bold,underline ctermfg=8 ctermbg=none
au ColorScheme * hi TabLineSel cterm=bold ctermfg=0 ctermbg=7
au ColorScheme * hi TabLineFill cterm=bold ctermbg=none

" Makes the current line stand out with bold and in the numberline
au ColorScheme * hi CursorLine cterm=bold
au ColorScheme * hi LineNr cterm=bold ctermfg=0 ctermbg=none
au ColorScheme * hi CursorLineNr cterm=none

" Set the ColorColumn for toggling via set list.
au ColorScheme * hi ColorColumn ctermbg=7

" Reverse for visual selection is too noisy and not usually legible so just
" disable highlighting inside the selection.
au ColorScheme * hi Visual cterm=bold ctermfg=7 ctermbg=8

" Show search matches in simple reverse.
au ColorScheme * hi Search cterm=reverse ctermfg=none ctermbg=none

" Match the Sign column to the number column
au ColorScheme * hi SignColumn cterm=bold ctermfg=0 ctermbg=none

" Shorten the timeout when looking for a paren match to highlight
let g:matchparen_insert_timeout = 5
set synmaxcol=500               " Stop syntax highlighting on very long lines

" Don't distinguish between delete, add, and change using bright colors. The
" type of change is obvious -- add and delete appear opposite filler markers,
" and changed lines have the changed portion highlighted.
au VimEnter,ColorScheme * hi DiffAdd ctermbg=0
au VimEnter,ColorScheme * hi DiffDelete ctermbg=0
au VimEnter,ColorScheme * hi DiffChange ctermbg=0
" There are two ways to guarantee legibility: force a single foreground color
" against a non-contrasting background color; use reverse foreground colors.
" The drawback of using reverse is there is no consistent color to highlight
" the changes, but reverse is still fairly easy to spot.
au VimEnter,ColorScheme * hi DiffText cterm=reverse ctermbg=none


" A good colorscheme
colorscheme desert_legacy
set background=dark

"Interact with vim using ; instead of :"
:nmap ; :

" clear search highlight
nnoremap \\ :noh<cr>

"Highlight trailing white space"
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Maybe return a string if the first arg is not empty.
fu! M(x, y)
    return a:x == '' || a:x == v:false ? '' : a:y . a:x
endfu
fu! W(x, y)
    return a:x == '' || a:x == v:false ? '' : a:x . a:y
endfu

" If we have multiple files open with the same name then also include the
" immdiate parent. (Shakes fist at Redux.)
fu! Nm(fname)
    let l:fpath = expand(a:fname)
    let l:fname = fnamemodify(l:fpath, ':t')

    if l:fpath == '' || l:fpath == l:fname
        return l:fpath
    endif

    let l:similar_list = getwininfo()
        \ ->map({i, x -> bufname(x.bufnr)})
        \ ->filter({i, x -> fnamemodify(x, ':t') == l:fname})

    return len(l:similar_list) == 1 ? l:fname : l:fpath
        \ ->fnamemodify(':h')
        \ ->fnamemodify(':t')
        \ ->{y -> [y, l:fname]}()
        \ ->join('/')
endfu

set statusline=%{Nm('%')}\ %<%{M(Nm('#'),'#')}\
    \ %h%m%r%w\ %y\ %{&fileencoding},%{&fileformat}\
    \ %q%=\ %-14.(%l,%c%V%)\ %P


" Change status line background color based on mode.
highlight StatusLine ctermfg=black ctermbg=white
autocmd InsertLeave * highlight StatusLine ctermfg=black ctermbg=white
autocmd InsertEnter * highlight StatusLine ctermfg=darkgreen ctermbg=black

"Strip trailing white space on save"
function! TrimWhiteSpace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction
autocmd BufWritePre *.* :call TrimWhiteSpace()

"Spelling, enable for certain files only"
"  set spell
set spelllang=en
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal spell

" Clear higlighting
nnoremap \\ :noh<cr>

" restore cursor position when reopening a file, except if it's a git commit
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif


"Text wrapping"
"set formatoptions=t
"set textwidth=72

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#temporary-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

