return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			-- Add filetype detection for .tpp files
			vim.filetype.add({
				extension = {
					tpp = 'cpp',
				},
			})

			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"c",
					"cpp",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"markdown",
					"markdown_inline",
					"python",
					"rust",
				},
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
