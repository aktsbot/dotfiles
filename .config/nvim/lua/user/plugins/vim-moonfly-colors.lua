return {
	{ -- colorscheme
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		priority = 1000,
		config = function()
			vim.g.moonflyTransparent = true
			vim.cmd.colorscheme("moonfly")
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
