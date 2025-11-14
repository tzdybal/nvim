return {
	"tpope/vim-fugitive",
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = 'master',
		build = ':TSUpdate',
		config = function() 
			require'nvim-treesitter.configs'.setup {
				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				highlight = {
					enable = true,
					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = true,
				},
			}
		end
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
