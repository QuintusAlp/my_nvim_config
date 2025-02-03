local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
map("i", "jk", "<Esc>");
--nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>");
--telecope
map("n", "<leader>ff", ":Telescope find_files<CR>");
map("n", "<leader>fg", ":Telescope live_grep<CR>");
map("n", "<leader>fb", ":Telescope buffers<CR>");
map("n", "<leader>fh", ":Telescope help_tags<CR>");
--header
map("n", "<leader>hh", ":Stdheader<CR>");
--buffers
map("n", "<C-]>", ":BufferLineCycleNext<CR>");
map("n", "<C-[>", ":BufferLineCyclePrev<CR>");
--window 
map("n", "<C-h>", "<C-w>h");
map("n", "<C-j>", "<C-w>j");
map("n", "<C-k>", "<C-w>k");
map("n", "<C-l>", "<C-w>l");
--terminal
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "jk", [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set("n", "<leader>t", function()
    require("terminal").toggle()
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", function()
    require("terminal").toggle(nil, { open_cmd = "float", height = 0.8, width = 0.8 })
end, { noremap = true, silent = true })



