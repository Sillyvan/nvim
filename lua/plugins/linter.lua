return {
	"mfussenegger/nvim-lint",
	config = function()
		vim.env.ESLINT_D_PPID = vim.fn.getpid()
		local lint = require("lint")
		lint.linters_by_ft = {
			javascript = {
				"eslint_d",
			},
			typescript = {
				"eslint",
			},
			javascriptreact = {
				"eslint_d",
			},
			typescriptreact = {
				"eslint",
			},
			svelte = {
				"eslint_d",
			},
			astro = {
				"eslint_d",
			},
			markdown = {
				"markdownlint",
			},
		}
	end,
}
