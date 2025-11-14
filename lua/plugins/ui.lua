return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		lazy = false,
		config = function()
			require('lualine').setup()
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		lazy = false,
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		keys = {
			{ "<leader>nt", "<cmd>Neotree<CR>", desc = "Toggle Neotre" },
		},
	},
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		keys = { -- Example mapping to toggle outline
			{ "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
		},
		opts = {
			-- Your setup opts here
		},
	},
	{
		"akinsho/toggleterm.nvim",
		lazy = true,
		cmd = { "ToggleTerm" },
		keys = {
			{ "<leader>t", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
		},
		opts = {
			enable_git_status = true,
		}
		--	config = function()
		--		require("toggleterm").setup({})
		--	end
	},

	--{
	--	"bjarneo/pixel.nvim",
	--	priority = 1000,
	--	config = function()
	--		vim.cmd.colorscheme("pixel")
	--	end,
	--},
}
