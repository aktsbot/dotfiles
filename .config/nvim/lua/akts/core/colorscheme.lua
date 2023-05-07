-- set colorscheme to what we choose with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme vscode")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

-- use terminal background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
