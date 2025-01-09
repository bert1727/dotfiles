-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.o

o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.scrolloff = 7

o.cursorlineopt = "both"
o.cursorline = false
-- o.clipboard = "unnamed"

vim.diagnostic.config({
  virtual_text = false,
})

vim.lsp.inlay_hint.enable(false, { 0 })
-- vim.o.updatetime = 250
-- o.guicursor = "n-v-i-c:block-Cursor"
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

o.expandtab = true --expand tab input with spaces characters
o.expandtab = true -- expand tab input with spaces characters
o.smartindent = true --syntax aware indentations for newline inserts
o.tabstop = 4 --num of space characters per tab
o.shiftwidth = 4 --spaces per indentation level
o.smartindent = true

vim.g.snacks_animate = true

-- vim.api.nvim_buf_set_extmark(0, vim.api.nvim_create_namespace(""), 0, -1, {
--   hl_eol = true,
-- })

-- vim.lsp.inlay_hint u
--   vim.api.nvim_buf_set_extmark(bufnr, vim.api.nvim_create_namespace("InlayHints"), line, 0, {
--   virt_text = virt_text,
--   virt_text_pos = "eol",
--   hl_mode = "combine",
-- })

-- -- Функция для установки inlay hints в конце строки
-- local function set_inlay_hints_at_eol(bufnr, line, hints)
--   local virt_text = {}
--   for _, hint in ipairs(hints) do
--     table.insert(virt_text, { hint.text, "LspInlayHint" })
--   end
--   vim.api.nvim_buf_set_extmark(bufnr, vim.api.nvim_create_namespace("InlayHints"), line, 0, {
--     virt_text = virt_text,
--     virt_text_pos = "eol",
--     hl_mode = "combine",
--   })
-- end
--
-- -- Пример использования функции
-- local bufnr = vim.api.nvim_get_current_buf()
-- local line = 10 -- Номер строки (начиная с 0)
-- local hints = {
--   { text = ": int" },
--   { text = ": string" },
-- }
-- set_inlay_hints_at_eol(bufnr, line, hints)
--
-- local ns_id = vim.api.nvim_create_namespace("inline_hints") -- Создаем пространство имен
-- local buffer = 0 -- Текущий буфер
-- local line = 0 -- Строка (нумерация начинается с 0)
-- local col = -1 -- Указываем -1, чтобы добавить виртуальный текст в конец строки
--
-- vim.api.nvim_buf_set_extmark(buffer, ns_id, line, col, {
--   virt_text = { { "<hint>", "Comment" } }, -- Текст и его выделение
--   virt_text_pos = "eol", -- Указываем, что текст должен быть в конце строки
-- })
