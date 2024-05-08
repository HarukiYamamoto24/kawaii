return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = function()
		return require("kawaii.kawaii3")
	end,
	config = function(_, opts)
		require("toggleterm").setup(opts)
	end,
}
