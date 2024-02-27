local status, bufferline = pcall(require, "bufferline")

if not status then
	return
end

bufferline.setup({
	options = {
		offsets = {
			{ filetype = "NvimTree" },
		},
	},
})
