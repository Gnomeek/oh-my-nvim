return {
	{
		"hardhackerlabs/theme-vim",
		name = "hardhacker",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.g.hardhacker_darker = 0
			-- vim.g.hardhacker_hide_tilde = 1
			-- vim.g.hardhacker_keyword_italic = 1
			-- vim.cmd("colorscheme hardhacker")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd("colorscheme tokyonight-storm")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme kanagawa-lotus")
		end,
	},
}
