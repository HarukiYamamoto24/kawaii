return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	build = ":TSUpdate",
	opts = function()
		return require("kawaii.kawaii0")
	end,
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
