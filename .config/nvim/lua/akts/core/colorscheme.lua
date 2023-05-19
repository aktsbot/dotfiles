-- set colorscheme to what we choose with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme default")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

-- use terminal background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Linefr", { bg = "none" })

-- tweaks to default
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "#626262" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "#121212", fg = "#626262" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#191919", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#aaaaaa", fg = "#191919" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#ffd787", fg = "#578787" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3a3a3a" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#767676" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#363636" })
