return {
  "linrongbin16/gitlinker.nvim",
  opts = function(_, _)
    return {
      router = {
        browse = {
          ["^git.cfdata.org$"] = "https://bitbucket.cfdata.org/projects/"
            .. "{_A.ORG}/repos/"
            .. "{_A.REPO}/browse/"
            .. "{_A.FILE}"
            .. "?at={_A.REV}"
            .. "#{_A.LSTART}"
            .. "{(_A.LEND > _A.LSTART and ('-' .. _A.LEND) or '')}",
          ["^gitlab.cfdata.org$"] = "https://gitlab.cfdata.org/{_A.ORG}/{_A.REPO}/-/blob/"
            .. "{_A.REV}/{_A.FILE}"
            .. "#L{_A.LSTART}"
            .. "{(_A.LEND > _A.LSTART and ('-' .. _A.LEND) or '')}",
        },
      },
    }
  end,
  keys = {
    {
      "<leader>gy",
      "<cmd>GitLink<cr>",
      silent = true,
      noremap = true,
      desc = "Copy git permlink to clipboard",
      mode = { "n", "v" },
    },
    {
      "<leader>gY",
      "<cmd>GitLink!<cr>",
      silent = true,
      noremap = true,
      desc = "Open git permlink in browser",
      mode = { "n", "v" },
    },
  },
}
