-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.cs",
  callback = function()
    local path = vim.fn.expand("%:p:h"):gsub(".*/src/", "")
    local namespace = "MyProject." .. path:gsub("/", ".")
    vim.api.nvim_buf_set_lines(0, 0, -1, false, { "namespace " .. namespace })
  end,
})
