return {
  "johmsalas/text-case.nvim",
  keys = {
    {
      "gan",
      function()
        require("textcase").current_word("to_constant_case")
      end,
      desc = "CONST_CASE",
    },
  },
  event = "VeryLazy",
  opts = {},
}
