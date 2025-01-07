return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["F"] = "find_files",
        ["G"] = "live_grep",
      },
    },
    commands = {
      find_files = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        require("fzf-lua").files({ cwd = path })
      end,
      live_grep = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        require("fzf-lua").live_grep({ cwd = path })
      end,
    },
  },
}
