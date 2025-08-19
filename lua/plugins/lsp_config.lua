return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					if server_name ~= "luau_lsp" then
						lspconfig[server_name].setup({
							capabilities = capabilities,
						})
					end
				end,
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
