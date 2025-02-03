return
{
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme "catppuccin"
			require("catppuccin").setup({
					flavour = "macchiato",
					transparent_background = false,
					show_end_of_buffer = false
				})
		end
	},
}
