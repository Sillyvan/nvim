return {
	{
		"williamboman/mason.nvim",
		event = "VeryLazy",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		ft = {
			"lua",
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"python",
			"rust",
			"go",
			"json",
			"html",
			"css",
			"svelte",
			"astro",
			"yaml",
			"toml",
			"markdown",
			"ruby",
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = {
					exclude = {
						"luau_lsp",
					},
				},
			})
			vim.diagnostic.config({
				virtual_text = true,
			})

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({ border = "single" })
			end)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
