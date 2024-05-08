return {
	"sbdchd/neoformat",
	lazy = false,
	event = "BufWritePre",
	config = function()
		vim.g.neoformat_enabled_javascript = { "prettier" }
		vim.g.neoformat_enabled_html = { "prettier" }
		vim.g.neoformat_enabled_css = { "prettier" }
		vim.g.neoformat_enabled_stylua = { "prettier" }

		vim.cmd([[                                                              augroup fmt
      autocmd!
      autocmd BufWritePre * silent Neoformat
      augroup END
    ]])
	end,
}
