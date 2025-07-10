require("snacks").setup({
  indent = {
    indent = {
      enabled = true, -- enable indent guides
      char = "│",
      only_scope = true, -- only show indent guides of the scope
      only_current = true, -- only show indent guides in the current window
      hl = "SnacksIndent",
    },
    scope = {
      enabled = false, -- enable highlighting the current scope
      hl = "SnacksIndentScope",
    },
    chunk = {
      enabled = true,
      only_current = true,
      hl = "SnacksIndentChunk",
      char = {
        corner_top = "╭",
        corner_bottom = "╰",
        horizontal = "─",
        vertical = "│",
        arrow = "›",
      },
    },
    -- filter = function(buf)
    --   return vim.g.snacks_indent ~= false and vim.b[buf].snacks_indent ~= false and vim.bo[buf].buftype ~= "bigfile"
    -- end,
    -- priority = 200,
  },
  -- scroll = {
  --   filter = function(buf)
  --     return vim.g.snacks_scroll ~= false
  --       and vim.b[buf].snacks_scroll ~= false
  --       and vim.bo[buf].buftype ~= "terminal"
  --       and vim.bo[buf].filetype ~= "bigfile"
  --   end,
  -- },
})
