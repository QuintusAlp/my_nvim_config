return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
	require("nvim-tree").setup({
		view = {
        width = 30, -- Width of the sidebar
        side = "left", -- Sidebar position ("left" or "right")
    },
    renderer = {
        highlight_opened_files = "name", -- Highlight opened files
    },
    update_focused_file = {
        enable = true, -- Update the tree when changing buffers
    },
    actions = {
        open_file = {
            resize_window = true, -- Adjust the width of the tree when opening files
        },
    },
	})
  end,
}
	  --sort = {
	  --  sorter = "case_sensitive",
	  --},
	  --view = {
	  --  width = 30,
	  --},
	  --renderer = {
	  --  group_empty = true,
	  --},
	  --filters = {
	  --  dotfiles = true,
	  --},
