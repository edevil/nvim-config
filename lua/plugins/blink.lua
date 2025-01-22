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
      opts.completion.list = { selection = { preselect = false, auto_insert = false } }
    end,
  },
}
