return {
  "max397574/better-escape.nvim",
  event = "InsertEnter",
  config = function()
    require("better_escape").setup({
      default_mappings = false,
      mappings = {
        i = {
          -- first_key[s]
          j = {
            --  second_key[s]
            k = "<Esc>",
            j = "<Esc>",
          },
        },
      },
    })
  end,
}
