--[[
This config is built from https://github.com/nvim-lua/kickstart.nvim and
https://github.com/dam9000/kickstart-modular.nvim
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("user.options")
require("user.keymaps")
-- require("user.colorscheme")

require("user.lazy-bootstrap")
require("user.lazy-plugins")

-- vim: ts=2 sts=2 sw=2 et
