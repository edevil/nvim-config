return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- https://github.com/LazyVim/LazyVim/discussions/2458
      -- local context = require("cmp.config.context")
      -- opts.enabled = function()
      --   return not context.in_treesitter_capture("comment")
      -- end
      opts.sources = vim.tbl_filter(function(source)
        return not vim.tbl_contains({ "buffer", "nvim_lsp", "luasnip", "snippy" }, source.name)
      end, opts.sources)
      table.insert(opts.sources, 1, {
        name = "nvim_lsp",
        entry_filter = function(entry, _)
          completion_kind = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]
          return not vim.tbl_contains({ "Text", "Snippet" }, completion_kind)
        end,
      })
    end,
  },

  -- Disable other snippet-related plugins
  { "L3MON4D3/LuaSnip", enabled = false },
  { "rafamadriz/friendly-snippets", enabled = false },
}
