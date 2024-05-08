return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"meuter/lualine-so-fancy.nvim",
	},
	enabled = true,
	lazy = false,
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	opts = function()
		return require("kawaii.kawaii10")
	end,
	config = function(_, opts)
		local kawaii = require("kawaii.kawaii8")
		require("lualine").setup(opts)
	end,
}
