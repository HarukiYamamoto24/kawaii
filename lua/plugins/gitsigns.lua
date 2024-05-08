return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = function()
			return require("kawaii.kawaii1")
		end,
		config = function(_, opts)
			require("gitsigns").setup(opts)
		end,
	},
}
