return {
	"akinsho/toggleterm.nvim",
	version = "*", -- use latest
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<leader>\]], -- keybinding to toggle terminal
			shade_terminals = true,
			shading_factor = 10,
			direction = "horizontal", -- "vertical" | "float" also available
			start_in_insert = true,
			persist_size = true,
			persist_mode = true,
		})
	end,
}
