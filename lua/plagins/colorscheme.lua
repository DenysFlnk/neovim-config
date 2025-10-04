return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- Setup kanagawa
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true,
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false, -- background transparency
			dimInactive = false, -- dim inactive windows
			terminalColors = true,
			theme = "wave", -- default: "wave", options: "dragon", "lotus"
			background = { -- map background to light/dark themes
				dark = "wave",
				light = "lotus",
			},
		})

		-- Apply the colorscheme
		vim.cmd.colorscheme("kanagawa")

		-- Toggle background transparency
		local bg_transparent = true
		local toggle_transparency = function()
			bg_transparent = not bg_transparent
			require("kanagawa").setup({ transparent = bg_transparent })
			vim.cmd.colorscheme("kanagawa")
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
	end,
}
