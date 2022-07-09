vim.g.lightline = {
	colorscheme = 'powerline',
  active = {
		left = {
			{ 'mode', 'past' },
			{ 'gitbranch', 'filename', 'modified' }
		}
	},
	component_function = {
		gitbranch = 'fugitive#head'
	}
}
