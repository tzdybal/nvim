return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable('gopls')
		end,
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.9',
		dependencies = { 'nvim-lua/plenary.nvim' },
		lazy = true,
		cmd = { "Telescope" },
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Find buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Find help tags" },
		},
	},
}
