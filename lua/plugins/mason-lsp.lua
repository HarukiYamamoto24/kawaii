return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	opts = function()
		return require("kawaii.kawaii5")
	end,

	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
	end,
}
