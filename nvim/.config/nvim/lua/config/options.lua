-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.o

o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.scrolloff = 7

o.cursorline = true
o.cursorlineopt = "number"

o.list = true

-- o.listchars = "eol:↵,trail:-,extends:…,tab:   ,"
o.listchars = "eol: ,trail:-,extends:…,tab:   ,"

o.tabstop = 4 --num of space characters per tab
o.shiftwidth = 4 --spaces per indentation level
o.numberwidth = 4 -- Set number column width to 2 {default 4} (default: 4)

o.termguicolors = true

o.number = true
-- o.statuscolumn = [[%!v:lnum == line('.') ? printf('%-4d', v:lnum) : printf('%4d', v:relnum)]]

vim.g.snacks_animate = true

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "JetBrainsMono Nerd Font:h13"
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_refresh_rate = 144
end

o.spelllang = "en_us,ru_ru"

-- vim.wo.number = true -- Make line numbers default (default: false)
o.number = true
-- o.relativenumber = true -- Set relative numbered lines (default: false)
o.signcolumn = "yes"
-- vim.wo.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')

-- vim.o.updatetime = 250
-- o.guicursor = "n-v-i-c:block-Cursor"
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

o.expandtab = true --expand tab input with spaces characters
-- o.expandtab = true -- expand tab input with spaces characters
o.smartindent = true --syntax aware indentations for newline inserts
vim.o.autoindent = false -- Copy indent from current line when starting new one (default: true)

-- o.relativenumber = true
-- vim.g.lazyvim_python_lsp = "pylsp"
-- vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.completion.menu
-- vim.g.blink.completion.ghost_text.enabled = true

-- Настройка значков для диагностики
local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "»" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- vim.g.trouble_lualine = true
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.diagnostic.config({ virtual_text = false })
  end,
})
vim.lsp.inlay_hint.enable(false, { bufnr = nil })
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = {
    current_line = true,
  },
})

-- vim.o.updatetime = 250
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
-- change color of the selection
-- vim.cmd([[
--   highlight Visual guibg=#fff guifg=white
--   highlight Visual ctermbg=238 ctermfg=white
-- ]])

-- vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_picker = "snacks"
