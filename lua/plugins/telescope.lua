return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = function()
			return require("kawaii.kawaii2")
		end,
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ft", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>ol", builtin.oldfiles, {})
		end,
	},
}
