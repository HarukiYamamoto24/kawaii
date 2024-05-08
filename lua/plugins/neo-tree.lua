return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	event = "VeryLazy",
	keys = {
		{ "<leader>tr", ":Neotree toggle left<CR>", silent = true, desc = "Left File Explorer" },
	},
	opts = function()
		return require("kawaii.kawaii4")
	end,
	config = function(_, opts)
		require("neo-tree").setup(opts)
	end,
}
