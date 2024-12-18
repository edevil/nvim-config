return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        compat = {},
        default = { "lsp", "buffer" },
        cmdline = {},
      }
    end,
  },
}
