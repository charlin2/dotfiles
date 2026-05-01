return {
  "snacks.nvim",
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            ["<A-H>"] = { "toggle_hidden", mode = { "i", "n" } },
            ["<A-I>"] = { "toggle_ignored", mode = { "i", "n" } },
            ["<a-h>"] = false,
            ["<a-i>"] = false,
          },
        },
        list = {
          keys = {
            ["<A-H>"] = "toggle_hidden",
            ["<A-I>"] = "toggle_ignored",
            ["<a-h>"] = false,
            ["<a-i>"] = false,
          },
        },
      },
    },
  },
}
