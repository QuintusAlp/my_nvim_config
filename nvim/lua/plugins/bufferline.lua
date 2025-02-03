return
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require("bufferline").setup({
				options = {
					separator_style = "slant",
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = 'Directory',
							text_align = "center", -- Align text: "left", "center", or "right"
							separator = true, -- Show a vertical separator 

						}
					}
				},
			})
		end
	}

