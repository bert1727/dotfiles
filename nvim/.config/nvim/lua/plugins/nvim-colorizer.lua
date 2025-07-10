return {
  {
    "norcalli/nvim-colorizer.lua",
    lazy = false,
    config = function()
      require("colorizer").setup({
        "*", -- Включить для всех файлов
      }, {
        css = true, -- Поддержка цветов в CSS формате
        mode = "background", -- Выделение фона под цвет
      })
    end,
  },

  -- {
  --
  --   "roobert/tailwindcss-colorizer-cmp.nvim",
  --   -- optionally, override the default options:
  --   config = function()
  --     require("tailwindcss-colorizer-cmp").setup({
  --       color_square_width = 2,
  --     })
  --   end,
  -- },
}
