return {
	"neovim/nvim-lspconfig",

	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.html.setup({
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		vim.keymap.set("n", "bf", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>bd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>br", vim.lsp.buf.references, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
