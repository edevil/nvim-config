return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              buildFlags = { "-tags=integration" },
              analyses = {
                -- ST1003 corresponds to the staticcheck analysis for 'Package name should be lower-case'
                ST1003 = false,
              },
            },
          },
        },
      },
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
}
