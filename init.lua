require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
local rtp = vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plagins.neotree"),
	require("plagins.colorscheme"),
	require("plagins.bufferline"),
	require("plagins.lualine"),
	require("plagins.treesitter"),
	require("plagins.telescope"),
	require("plagins.lsp"),
	require("plagins.autocompletion"),
	require("plagins.autoformatting"),
	require("plagins.gitsigns"),
	require("plagins.alpha"),
	require("plagins.indent-blankline"),
	require("plagins.misc"),
	require("plagins.toggleterm"),
	require("plagins.nvim-dap"),
})
