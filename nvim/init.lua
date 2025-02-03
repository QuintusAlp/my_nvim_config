local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.tabstop = 4         -- Number of spaces a tab counts for
opt.shiftwidth = 4      -- Number of spaces for each indentation level
opt.softtabstop = 4     -- Number of spaces inserted for a tab
opt.expandtab = false
opt.number = true;
--keymap
require("config.keymap")
--lazyvim--
require("config.lazy")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

