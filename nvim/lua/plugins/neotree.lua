return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    {
      "\\",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },
  opts = {
    window = {
      mappings = {
        ["Y"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            path = vim.fn.fnamemodify(path, ":.")
            vim.fn.setreg("+", path, "c")
          end,
          desc = "Copy Path to Clipboard",
        },
        ["K"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            path = vim.fn.fnamemodify(path, ":.")
            path = string.gsub(path, "/", ".")
            vim.fn.setreg("+", path, "c")
          end,
          desc = "Copy Path to Clipboard",
        },
      },
    },
  },
}
