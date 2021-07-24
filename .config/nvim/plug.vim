" auto-install vim-plug - package manager
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'digitaltoad/vim-pug'
    " Auto pairs for '(' '[' '{'
    Plug 'cohama/lexima.vim'
    " Change project root when I switch
    Plug 'airblade/vim-rooter'

    if has("nvim")
      Plug 'neovim/nvim-lspconfig'
      Plug 'nvim-lua/completion-nvim'
      Plug 'folke/lsp-colors.nvim'
      Plug 'glepnir/lspsaga.nvim'
      Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
      Plug 'nvim-lua/popup.nvim'
      Plug 'nvim-lua/plenary.nvim'
      Plug 'nvim-telescope/telescope.nvim'
    endif
call plug#end()
