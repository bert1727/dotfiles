return {
  "nvim-lspconfig",
  opts = function(_, opts)
    -- opts.inlay_hints = false
    opts.diagnostics.virtual_text = false
  end,
}
