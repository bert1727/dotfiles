return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = true,

    opts = function()
      require("kanagawa").setup({
        transparent = false,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },

  {
    "sainnhe/sonokai",
    lazy = true,
  },

  {
    "shaunsingh/nord.nvim",
    lazy = true,
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = true,

    config = function()
      require("nordic").setup({
        -- Enable bold keywords.
        bold_keywords = true,
        -- Enable italic comments.
        italic_comments = true,
        -- Enable editor background transparency.
        transparent = {
          -- Enable transparent background.
          bg = false,
          -- Enable transparent background for floating windows.
          float = false,
        },
        -- Enable brighter float border.
        bright_border = true,
        -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        reduced_blue = true,
        -- Swap the dark background with the normal one.
        swap_backgrounds = false,
        -- Cursorline options.  Also includes visual/selection.
        cursorline = {
          -- Bold font in cursorline.
          bold = false,
          -- Bold cursorline number.
          bold_number = true,
          -- Available styles: 'dark', 'light'.
          theme = "dark",
          -- Blending the cursorline bg with the buffer bg.
          blend = 0.85,
        },
        noice = {
          -- Available styles: `classic`, `flat`.
          style = "classic",
        },
        telescope = {
          -- Available styles: `classic`, `flat`.
          style = "flat",
        },
        leap = {
          -- Dims the backdrop when using leap.
          dim_backdrop = false,
        },
        ts_context = {
          -- Enables dark background for treesitter-context window
          dark_background = true,
        },
      })
    end,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      -- transparent_background = true,
      transparent_background = false,
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if vim.g.colors_name:find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = true,
  },

  { "rose-pine/neovim", name = "rose-pine", lazy = true, opts = { styles = { transparency = true } } },
  { "sainnhe/everforest", lazy = true },

  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      -- require("gruvbox-material").setup({
      --   transparent_background = true,
      -- })
      vim.g.gruvbox_material_transparent_background = false
      vim.g.gruvbox_material_enable_italic = false
    end,
  },

  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      -- vim.cmd([[colorscheme aura-dark]])
    end,
  },

  { "olimorris/onedarkpro.nvim", lazy = true },

  { "EdenEast/nightfox.nvim", lazy = true },

  { "savq/melange-nvim", lazy = true },

  { "xero/miasma.nvim", lazy = true },

  { "Biscuit-Theme/nvim", lazy = true },

  -- { "scottmckendry/cyberdream.nvim", lazy = true },

  { "projekt0n/github-nvim-theme", name = "github-theme", lazy = true },

  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      dim_inactive = true,
      cache = false,
      auto_plugins = true,
    },
  },

  { "datsfilipe/vesper.nvim", lazy = true },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
      -- colorscheme = "kanagawa-paper-ink",
      -- colorscheme = "dracula",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "gruvbox",
      -- colorscheme = "duskfox",
      -- colorscheme = "tokyonight-moon",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "github_dark_dimmed",
      -- colorscheme = "onedark",
      -- colorscheme = "nightfox",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "everforest",
      -- colorscheme = "gruvbox-material",
    },
  },
}
