return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		lazy = true,
		dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
		keys = {
			-- disable the keymap to grep files
			{"<leader>/", false},
			-- change a keymap
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Files" },
		},
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			-- This is your opts table
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
							-- even more opts
						}

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					}
				}
			}
			require("telescope").load_extension("ui-select")
		end
	}
}
