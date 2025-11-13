return {
	"numToStr/Comment.nvim",
	lazy = false, -- load immediately
	config = function()
		require("Comment").setup({
			padding = true,
			sticky = true,
			toggler = {
				line = "gcc",
				block = "gbc",
			},
			opleader = {
				line = "gc",
				block = "gb",
			},
			mappings = {
				basic = true,
				extra = true,
			},
		})
	end,
}
