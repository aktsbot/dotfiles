-- vim: ts=2 sts=2 sw=2 et

local opt = vim.opt
local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.number = true
opt.relativenumber = true
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 250
opt.timeoutlen = 300
opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10
opt.cursorline = true
opt.termguicolors = true
opt.wrap = false

opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- colorscheme tweaks
vim.cmd.colorscheme("vim")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#2a2a2a", fg = "#aaaaaa", bold = true })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#121212", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "#3a3a3a", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#3a3a3a", fg = "#aaaaaa", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#3a3a3a", fg = "#000000" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "#626262" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "#121212", fg = "#626262" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#191919", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#aaaaaa", fg = "#191919" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#C6A950", fg = "#111111" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f1f1f" })

-- keybinds
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

keymap.set("n", ";", ":")
keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

