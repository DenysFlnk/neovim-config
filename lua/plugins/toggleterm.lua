return {
	"akinsho/toggleterm.nvim",
	version = "*", -- use latest
	config = function()
		require("toggleterm").setup({
			size = 15,
			shade_terminals = true,
			shading_factor = 10,
			direction = "horizontal", -- "vertical" | "float" also available
			start_in_insert = true,
			persist_size = true,
			persist_mode = true,
		})
		vim.keymap.set("n", "<leader>\\", "<Cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
	end,
}
