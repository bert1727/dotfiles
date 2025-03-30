-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- map("i", "jk", "<ESC>")
map("i", "<A-C-j>", "<Down>")
map("i", "<A-C-k>", "<Up>")
map("i", "<A-C-h>", "<Left>")
map("i", "<A-C-l>", "<Right>")

map("n", "<M-C-j>", "i<CR><ESC>")
map("n", "<M-h>", "i<CR><ESC>")

map("n", "-", require("oil").toggle_float, { desc = "Toggle oil float" })
map("n", "<leader>_", "<CMD>Oil<CR>", { desc = "Open parent directory" })
