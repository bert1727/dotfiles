return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*", -- Включить для всех файлов
    }, {
      css = true, -- Поддержка цветов в CSS формате
      mode = "background", -- Выделение фона под цвет
    })
  end,
}
