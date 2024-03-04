vim.cmd.colorscheme("default")

--
-- random colors from the net and tejr's sahara colorscheme
-- this nvim config used min.statusline and
-- https://github.com/echasnovski/mini.nvim/blob/main/lua/mini/statusline.lua#L487
-- outlines what colors are being used for it from the
-- colorscheme
--
-- normal first
vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "#aaaaaa" })

vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "#626262" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "#121212", fg = "#626262" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#191919", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#aaaaaa", fg = "#191919" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#C6A950", fg = "#111111" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f1f1f" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#767676", italic = true })
vim.api.nvim_set_hl(0, "Visual", { bg = "#363636" })

vim.api.nvim_set_hl(0, "StatusLine", { bg = "#3a3a3a", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#3a3a3a", fg = "#000000" })
vim.api.nvim_set_hl(0, "Special", { bg = "none", fg = "#ffd7af" })
vim.api.nvim_set_hl(0, "SpecialKey", { bg = "none", fg = "#87d700" })
vim.api.nvim_set_hl(0, "SpellBad", { fg = "none", bg = "#303030" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#ffd787", bg = "none" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#d75f5f", bg = "none" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#ffafaf", bg = "none" })

vim.api.nvim_set_hl(0, "DiffAdd", { fg = "none", bg = "#005f00" })
vim.api.nvim_set_hl(0, "DiffChange", { fg = "none", bg = "#00005f" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = "none", bg = "#5f0000" })
vim.api.nvim_set_hl(0, "DiffText", { fg = "none", bg = "#0000af" })

vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#d7af87", bg = "#3a3a3a" })
vim.api.nvim_set_hl(0, "Folded", { fg = "#ffd700", bg = "#3a3a3a" })

vim.api.nvim_set_hl(0, "Ignore", { fg = "#585858", bg = "none" })
vim.api.nvim_set_hl(0, "IncSearch", { fg = "#afafff", bg = "#005f87" })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#d7af00", bg = "none" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#00875f", bg = "none" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#3a3a3a", bg = "none" })
vim.api.nvim_set_hl(0, "Question", { fg = "#00ff87", bg = "none" })
vim.api.nvim_set_hl(0, "Search", { fg = "#afafff", bg = "#000087" })
vim.api.nvim_set_hl(0, "Todo", { fg = "#900000", bg = "#ffff00" })
vim.api.nvim_set_hl(0, "Type", { fg = "#afaf5f", bg = "none" })
vim.api.nvim_set_hl(0, "Underlined", { fg = "#5fd7ff", bg = "none" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#ff875f", bg = "none" })

vim.api.nvim_set_hl(0, "Identifier", { fg = "#389BA1", bg = "none" })
vim.api.nvim_set_hl(0, "Directory", { fg = "#6dceeb", bg = "none" })
