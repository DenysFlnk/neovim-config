return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" }, -- Load when opening a file
	opts = {
		formatters_by_ft = {
			-- Use prettier for vue, javascript, and typescript
			vue = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true, -- Use LSP formatter if prettier isn't found
		},
	},
}
