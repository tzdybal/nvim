return {
	"tpope/vim-fugitive",
	{
		'romus204/tree-sitter-manager.nvim',
		config = function()
			require('tree-sitter-manager').setup({
					ensure_installed = { 'go', 'rust', 'lua', 'bash' },
					auto_install = true,
					highlight = true,
					})
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio"
		},
		config = function()
			require("dapui").setup()
		end
	},
}
