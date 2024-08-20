--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update
--
-- TODO: add my config updates later
--

require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	require("user/plugins/vim-moonfly-colors"),
	require("user/plugins/comment"),
	require("user/plugins/gitsigns"),
	require("user/plugins/which-key"),
	require("user/plugins/telescope"),
	require("user/plugins/cmp"),
	require("user/plugins/linting"),
	require("user/plugins/conform"),
	require("user/plugins/autopairs"),

	require("user/plugins/nvim-tree"),

	require("user/plugins/todo-comments"),
	require("user/plugins/mini"),
	require("user/plugins/treesitter"),

	require("user/plugins/colorizer"),
	require("user/plugins/surround"),

	require("user/plugins/bufferline"),
	require("user/plugins/alpha-nvim"),

	{
		import = "user.plugins.lsp",
	},
}, {
	checker = {
		enabled = false,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

-- vim: ts=2 sts=2 sw=2 et
