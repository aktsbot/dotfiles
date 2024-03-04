local status, lualine = pcall(require, "lualine")

if not status then
	return
end

lualine.setup({
	options = {
		theme = "powerline_dark",
		icons_enabled = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = { "packer", "NVimTree" },
			winbar = {},
		},
	},
})
