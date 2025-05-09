return {
	"Diogo-ss/42-header.nvim",
	cmd = { "Stdheader" },
	keys = {
	{"<leader>hh", ":Stdheader<CR>", desc = "print the 42 header"}
		},
  opts = {
	default_map = false, -- Default mapping <F1> in normal mode.
	auto_update = true, -- Update header when saving.
	user = "qalpesse", -- Your user.
	mail = "qalpesse@student.s19.be", -- Your mail.
	-- add other options.
  },
  config = function(_, opts)
	require("42header").setup(opts)
	end,
	}
